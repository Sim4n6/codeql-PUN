// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.NumberLiteralExpr

class FloatLiteralExprBase extends Ipa::TFloatLiteralExpr, NumberLiteralExpr {
  override string getAPrimaryQlClass() { result = "FloatLiteralExpr" }

  string getStringValue() {
    result = Ipa::convertFloatLiteralExprToDb(this).(Db::FloatLiteralExpr).getStringValue()
  }
}
