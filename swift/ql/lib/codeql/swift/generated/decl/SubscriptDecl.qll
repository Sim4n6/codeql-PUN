// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.decl.AbstractStorageDecl
import codeql.swift.elements.decl.GenericContext
import codeql.swift.elements.decl.ParamDecl
import codeql.swift.elements.type.Type

class SubscriptDeclBase extends Ipa::TSubscriptDecl, AbstractStorageDecl, GenericContext {
  override string getAPrimaryQlClass() { result = "SubscriptDecl" }

  ParamDecl getImmediateParam(int index) {
    result =
      Ipa::convertParamDeclFromDb(Ipa::convertSubscriptDeclToDb(this)
            .(Db::SubscriptDecl)
            .getParam(index))
  }

  final ParamDecl getParam(int index) { result = getImmediateParam(index).resolve() }

  final ParamDecl getAParam() { result = getParam(_) }

  final int getNumberOfParams() { result = count(getAParam()) }

  Type getImmediateElementType() {
    result =
      Ipa::convertTypeFromDb(Ipa::convertSubscriptDeclToDb(this)
            .(Db::SubscriptDecl)
            .getElementType())
  }

  final Type getElementType() { result = getImmediateElementType().resolve() }
}
