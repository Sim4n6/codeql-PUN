// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `TupleExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr

/**
 * INTERNAL: This module contains the fully generated definition of `TupleExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::TupleExpr` class directly.
   * Use the subclass `TupleExpr`, where the following predicates are available.
   */
  class TupleExpr extends Synth::TTupleExpr, Expr {
    override string getAPrimaryQlClass() { result = "TupleExpr" }

    /**
     * Gets the `index`th element of this tuple expression (0-based).
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateElement(int index) {
      result =
        Synth::convertExprFromRaw(Synth::convertTupleExprToRaw(this)
              .(Raw::TupleExpr)
              .getElement(index))
    }

    /**
     * Gets the `index`th element of this tuple expression (0-based).
     */
    final Expr getElement(int index) {
      exists(Expr immediate |
        immediate = this.getImmediateElement(index) and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }

    /**
     * Gets any of the elements of this tuple expression.
     */
    final Expr getAnElement() { result = this.getElement(_) }

    /**
     * Gets the number of elements of this tuple expression.
     */
    final int getNumberOfElements() { result = count(int i | exists(this.getElement(i))) }
  }
}
