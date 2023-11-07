// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `FallthroughStmt`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.stmt.CaseStmt
import codeql.swift.elements.stmt.Stmt

module Generated {
  class FallthroughStmt extends Synth::TFallthroughStmt, Stmt {
    override string getAPrimaryQlClass() { result = "FallthroughStmt" }

    /**
     * Gets the fallthrough source of this fallthrough statement.
     */
    CaseStmt getFallthroughSource() {
      result =
        Synth::convertCaseStmtFromRaw(Synth::convertFallthroughStmtToRaw(this)
              .(Raw::FallthroughStmt)
              .getFallthroughSource())
    }

    /**
     * Gets the fallthrough dest of this fallthrough statement.
     */
    CaseStmt getFallthroughDest() {
      result =
        Synth::convertCaseStmtFromRaw(Synth::convertFallthroughStmtToRaw(this)
              .(Raw::FallthroughStmt)
              .getFallthroughDest())
    }
  }
}
