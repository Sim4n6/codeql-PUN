// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `UnresolvedTypeConversionExpr`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.ErrorElement
import codeql.swift.elements.expr.ImplicitConversionExpr

module Generated {
  class UnresolvedTypeConversionExpr extends Synth::TUnresolvedTypeConversionExpr,
    ImplicitConversionExpr, ErrorElement
  {
    override string getAPrimaryQlClass() { result = "UnresolvedTypeConversionExpr" }
  }
}
