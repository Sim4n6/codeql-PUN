// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.stmt.BraceStmt
import codeql.swift.elements.stmt.LabeledConditionalStmt

class GuardStmtBase extends Ipa::TGuardStmt, LabeledConditionalStmt {
  override string getAPrimaryQlClass() { result = "GuardStmt" }

  BraceStmt getImmediateBody() {
    result = Ipa::convertBraceStmtFromDb(Ipa::convertGuardStmtToDb(this).(Db::GuardStmt).getBody())
  }

  final BraceStmt getBody() { result = getImmediateBody().resolve() }
}
