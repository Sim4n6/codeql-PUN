// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.stmt.BraceStmt
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.stmt.LabeledStmt
import codeql.swift.elements.pattern.Pattern
import codeql.swift.elements.decl.PatternBindingDecl

module Generated {
  class ForEachStmt extends Synth::TForEachStmt, LabeledStmt {
    override string getAPrimaryQlClass() { result = "ForEachStmt" }

    /**
     * Gets the pattern of this for each statement.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Pattern getImmediatePattern() {
      result = Synth::convertPatternFromRaw(Synth::convertForEachStmtToRaw(this).(Raw::ForEachStmt).getPattern())
    }

    /**
     * Gets the pattern of this for each statement.
     *
     */
    final Pattern getPattern() {
      exists(Pattern immediate | immediate = this.getImmediatePattern() and
        result = immediate.resolve())
    }


    /**
     * Gets the where of this for each statement, if it exists.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateWhere() {
      result = Synth::convertExprFromRaw(Synth::convertForEachStmtToRaw(this).(Raw::ForEachStmt).getWhere())
    }

    /**
     * Gets the where of this for each statement, if it exists.
     *
     */
    final Expr getWhere() {
      exists(Expr immediate | immediate = this.getImmediateWhere() and
        result = immediate.resolve())
    }

    /**
     * Holds if `getWhere()` exists.
     */
    final predicate hasWhere() {
      exists(this.getWhere())
    }

    /**
     * Gets the iteratorvar of this for each statement, if it exists.
     *
     */
    PatternBindingDecl getIteratorVar() {
      result = Synth::convertPatternBindingDeclFromRaw(Synth::convertForEachStmtToRaw(this).(Raw::ForEachStmt).getIteratorVar())
    }

    /**
     * Holds if `getIteratorVar()` exists.
     */
    final predicate hasIteratorVar() {
      exists(this.getIteratorVar())
    }

    /**
     * Gets the nextcall of this for each statement, if it exists.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateNextCall() {
      result = Synth::convertExprFromRaw(Synth::convertForEachStmtToRaw(this).(Raw::ForEachStmt).getNextCall())
    }

    /**
     * Gets the nextcall of this for each statement, if it exists.
     *
     */
    final Expr getNextCall() {
      exists(Expr immediate | immediate = this.getImmediateNextCall() and
        result = immediate.resolve())
    }

    /**
     * Holds if `getNextCall()` exists.
     */
    final predicate hasNextCall() {
      exists(this.getNextCall())
    }

    /**
     * Gets the body of this for each statement.
     *
     */
    BraceStmt getBody() {
      result = Synth::convertBraceStmtFromRaw(Synth::convertForEachStmtToRaw(this).(Raw::ForEachStmt).getBody())
    }

  }
}
