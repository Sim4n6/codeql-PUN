// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `AwaitExpr`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.IdentityExpr

module Generated {
  class AwaitExpr extends Synth::TAwaitExpr, IdentityExpr {
    override string getAPrimaryQlClass() { result = "AwaitExpr" }
  }
}
