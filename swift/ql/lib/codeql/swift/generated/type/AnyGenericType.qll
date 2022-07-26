// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.decl.Decl
import codeql.swift.elements.type.Type

class AnyGenericTypeBase extends Ipa::TAnyGenericType, Type {
  Type getImmediateParent() {
    result =
      Ipa::convertTypeFromDb(Ipa::convertAnyGenericTypeToDb(this).(Db::AnyGenericType).getParent())
  }

  final Type getParent() { result = getImmediateParent().resolve() }

  final predicate hasParent() { exists(getParent()) }

  Decl getImmediateDeclaration() {
    result =
      Ipa::convertDeclFromDb(Ipa::convertAnyGenericTypeToDb(this)
            .(Db::AnyGenericType)
            .getDeclaration())
  }

  final Decl getDeclaration() { result = getImmediateDeclaration().resolve() }
}
