// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.Expr

class DotSyntaxBaseIgnoredExprBase extends Ipa::TDotSyntaxBaseIgnoredExpr, Expr {
  override string getAPrimaryQlClass() { result = "DotSyntaxBaseIgnoredExpr" }

  Expr getImmediateQualifier() {
    result =
      Ipa::convertExprFromDb(Ipa::convertDotSyntaxBaseIgnoredExprToDb(this)
            .(Db::DotSyntaxBaseIgnoredExpr)
            .getQualifier())
  }

  final Expr getQualifier() { result = getImmediateQualifier().resolve() }

  Expr getImmediateSubExpr() {
    result =
      Ipa::convertExprFromDb(Ipa::convertDotSyntaxBaseIgnoredExprToDb(this)
            .(Db::DotSyntaxBaseIgnoredExpr)
            .getSubExpr())
  }

  final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }
}
