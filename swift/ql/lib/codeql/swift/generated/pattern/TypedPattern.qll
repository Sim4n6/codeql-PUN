// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `TypedPattern`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.pattern.Pattern
import codeql.swift.elements.type.TypeRepr

module Generated {
  class TypedPattern extends Synth::TTypedPattern, Pattern {
    override string getAPrimaryQlClass() { result = "TypedPattern" }

    /**
     * Gets the sub pattern of this typed pattern.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Pattern getImmediateSubPattern() {
      result =
        Synth::convertPatternFromRaw(Synth::convertTypedPatternToRaw(this)
              .(Raw::TypedPattern)
              .getSubPattern())
    }

    /**
     * Gets the sub pattern of this typed pattern.
     */
    final Pattern getSubPattern() {
      exists(Pattern immediate |
        immediate = this.getImmediateSubPattern() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }

    /**
     * Gets the type representation of this typed pattern, if it exists.
     */
    TypeRepr getTypeRepr() {
      result =
        Synth::convertTypeReprFromRaw(Synth::convertTypedPatternToRaw(this)
              .(Raw::TypedPattern)
              .getTypeRepr())
    }

    /**
     * Holds if `getTypeRepr()` exists.
     */
    final predicate hasTypeRepr() { exists(this.getTypeRepr()) }
  }
}
