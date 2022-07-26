// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.type.Type

class AnyFunctionTypeBase extends Ipa::TAnyFunctionType, Type {
  Type getImmediateResult() {
    result =
      Ipa::convertTypeFromDb(Ipa::convertAnyFunctionTypeToDb(this).(Db::AnyFunctionType).getResult())
  }

  final Type getResult() { result = getImmediateResult().resolve() }

  Type getImmediateParamType(int index) {
    result =
      Ipa::convertTypeFromDb(Ipa::convertAnyFunctionTypeToDb(this)
            .(Db::AnyFunctionType)
            .getParamType(index))
  }

  final Type getParamType(int index) { result = getImmediateParamType(index).resolve() }

  final Type getAParamType() { result = getParamType(_) }

  final int getNumberOfParamTypes() { result = count(getAParamType()) }

  string getParamLabel(int index) {
    result = Ipa::convertAnyFunctionTypeToDb(this).(Db::AnyFunctionType).getParamLabel(index)
  }

  final string getAParamLabel() { result = getParamLabel(_) }

  final int getNumberOfParamLabels() { result = count(getAParamLabel()) }

  predicate isThrowing() {
    Ipa::convertAnyFunctionTypeToDb(this).(Db::AnyFunctionType).isThrowing()
  }

  predicate isAsync() { Ipa::convertAnyFunctionTypeToDb(this).(Db::AnyFunctionType).isAsync() }
}
