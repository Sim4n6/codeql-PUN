// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `IsExpr`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.CheckedCastExpr

module Generated {
  class IsExpr extends Synth::TIsExpr, CheckedCastExpr {
    override string getAPrimaryQlClass() { result = "IsExpr" }
  }
}
