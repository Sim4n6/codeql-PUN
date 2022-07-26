// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.Expr

class TupleElementExprBase extends Ipa::TTupleElementExpr, Expr {
  override string getAPrimaryQlClass() { result = "TupleElementExpr" }

  Expr getImmediateSubExpr() {
    result =
      Ipa::convertExprFromDb(Ipa::convertTupleElementExprToDb(this)
            .(Db::TupleElementExpr)
            .getSubExpr())
  }

  final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }

  int getIndex() {
    result = Ipa::convertTupleElementExprToDb(this).(Db::TupleElementExpr).getIndex()
  }
}
