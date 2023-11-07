// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `LazyInitializationExpr`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr

module Generated {
  class LazyInitializationExpr extends Synth::TLazyInitializationExpr, Expr {
    override string getAPrimaryQlClass() { result = "LazyInitializationExpr" }

    /**
     * Gets the sub expression of this lazy initialization expression.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateSubExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertLazyInitializationExprToRaw(this)
              .(Raw::LazyInitializationExpr)
              .getSubExpr())
    }

    /**
     * Gets the sub expression of this lazy initialization expression.
     */
    final Expr getSubExpr() {
      exists(Expr immediate |
        immediate = this.getImmediateSubExpr() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }
  }
}
