// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `CaseStmt`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.stmt.CaseLabelItem
import codeql.swift.elements.stmt.Stmt
import codeql.swift.elements.decl.VarDecl

module Generated {
  class CaseStmt extends Synth::TCaseStmt, Stmt {
    override string getAPrimaryQlClass() { result = "CaseStmt" }

    /**
     * Gets the `index`th label of this case statement (0-based).
     */
    CaseLabelItem getLabel(int index) {
      result =
        Synth::convertCaseLabelItemFromRaw(Synth::convertCaseStmtToRaw(this)
              .(Raw::CaseStmt)
              .getLabel(index))
    }

    /**
     * Gets any of the labels of this case statement.
     */
    final CaseLabelItem getALabel() { result = this.getLabel(_) }

    /**
     * Gets the number of labels of this case statement.
     */
    final int getNumberOfLabels() { result = count(int i | exists(this.getLabel(i))) }

    /**
     * Gets the `index`th variable of this case statement (0-based).
     */
    VarDecl getVariable(int index) {
      result =
        Synth::convertVarDeclFromRaw(Synth::convertCaseStmtToRaw(this)
              .(Raw::CaseStmt)
              .getVariable(index))
    }

    /**
     * Gets any of the variables of this case statement.
     */
    final VarDecl getAVariable() { result = this.getVariable(_) }

    /**
     * Gets the number of variables of this case statement.
     */
    final int getNumberOfVariables() { result = count(int i | exists(this.getVariable(i))) }

    /**
     * Gets the body of this case statement.
     */
    Stmt getBody() {
      result =
        Synth::convertStmtFromRaw(Synth::convertCaseStmtToRaw(this).(Raw::CaseStmt).getBody())
    }
  }
}
