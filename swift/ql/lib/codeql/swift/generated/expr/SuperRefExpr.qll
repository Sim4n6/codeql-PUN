// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.decl.VarDecl

class SuperRefExprBase extends Ipa::TSuperRefExpr, Expr {
  override string getAPrimaryQlClass() { result = "SuperRefExpr" }

  VarDecl getImmediateSelf() {
    result =
      Ipa::convertVarDeclFromDb(Ipa::convertSuperRefExprToDb(this).(Db::SuperRefExpr).getSelf())
  }

  final VarDecl getSelf() { result = getImmediateSelf().resolve() }
}
