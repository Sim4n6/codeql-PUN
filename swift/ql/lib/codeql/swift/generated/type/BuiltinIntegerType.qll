// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.type.AnyBuiltinIntegerType

class BuiltinIntegerTypeBase extends Ipa::TBuiltinIntegerType, AnyBuiltinIntegerType {
  override string getAPrimaryQlClass() { result = "BuiltinIntegerType" }

  int getWidth() {
    result = Ipa::convertBuiltinIntegerTypeToDb(this).(Db::BuiltinIntegerType).getWidth()
  }

  final predicate hasWidth() { exists(getWidth()) }
}
