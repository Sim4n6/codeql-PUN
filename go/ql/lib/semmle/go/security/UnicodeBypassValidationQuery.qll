/**
 * Provides a taint-tracking configuration for detecting "Unicode transformation mishandling" vulnerabilities.
 */

private import go
import semmle.go.Concepts
import semmle.go.dataflow.DataFlow
import semmle.go.dataflow.TaintTracking
import UnicodeBypassValidationCustomizations::UnicodeBypassValidation

/** A state signifying that a logical validation has not been performed. */
class PreValidation extends DataFlow::FlowState {
  PreValidation() { this = "PreValidation" }
}

/** A state signifying that a logical validation has been performed. */
class PostValidation extends DataFlow::FlowState {
  PostValidation() { this = "PostValidation" }
}

/**
 * A taint-tracking configuration for detecting "Unicode transformation mishandling" vulnerabilities.
 *
 * This configuration uses two flow states, `PreValidation` and `PostValidation`,
 * to track the requirement that a logical validation has been performed before the Unicode Transformation.
 */
class Configuration extends TaintTracking::Configuration {
  Configuration() { this = "UnicodeBypassValidation" }

  override predicate isSource(DataFlow::Node source, DataFlow::FlowState state) {
    (source instanceof UntrustedFlowSource or source instanceof Source) and
    state instanceof PreValidation
  }

  override predicate isAdditionalTaintStep(
    DataFlow::Node nodeFrom, DataFlow::FlowState stateFrom, DataFlow::Node nodeTo,
    DataFlow::FlowState stateTo
  ) {
    (
      exists(DataFlow::CallNode cn |
        cn.getACalleeIncludingExternals().asFunction() instanceof EscapeFunction and
        nodeFrom = cn.getAnArgument() and
        nodeTo = cn.getResult()
      )
      or
      exists(DataFlow::CallNode cn |
        (
          cn.getACalleeIncludingExternals().asFunction() instanceof RegexpMatchFunction or
          cn.getACalleeIncludingExternals().asFunction() instanceof RegexpReplaceFunction
        ) and
        nodeFrom = cn.getAnArgument() and
        nodeTo = cn.getResult()
      )
      or
      exists(DataFlow::CallNode cn |
        cn.getCalleeName() =
          [
            "Clone", "Compare", "Contains", "ContainsAny", "ContainsRune", "Count", "Cut",
            "CutPrefix", "CutSuffix", "EqualFold", "Fields", "FieldsFunc", "HasPrefix", "HasSuffix",
            "Index", "IndexAny", "IndexByte", "IndexFunc", "IndexRune", "Join", "LastIndex",
            "LastIndexAny", "LastIndexByte", "LastIndexFunc", "Map", "Repeat", "Replace",
            "ReplaceAll", "Split", "SplitAfter", "SplitAfterN", "SplitN", "Title", "ToLower",
            "ToLowerSpecial", "ToTitle", "ToTitleSpecial", "ToUpper", "ToUpperSpecial",
            "ToValidUTF8", "Trim", "TrimFunc", "TrimLeft", "TrimLeftFunc", "TrimPrefix",
            "TrimRight", "TrimRightFunc", "TrimSpace", "TrimSuffix"
          ] and
        nodeFrom = cn.getAnArgument() and
        nodeTo = cn.getResult()
      )
    ) and
    stateFrom instanceof PreValidation and
    stateTo instanceof PostValidation
  }

  /* A Unicode Tranformation (Unicode tranformation) is considered a sink when the algorithm used is either NFC or NFKC.  */
  override predicate isSink(DataFlow::Node sink, DataFlow::FlowState state) {
    exists(string unicodeNorm, DataFlow::MethodCallNode cn |
      unicodeNorm = package("golang.org/x/text", "unicode/norm") and
      cn.getTarget().hasQualifiedName(unicodeNorm, "Form", "String") and
      sink = cn.getArgument(0)
    ) and
    state instanceof PostValidation
  }
}
