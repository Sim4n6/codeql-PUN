// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db

class ElementBase extends Ipa::TElement {
  string toString() { none() } // overridden by subclasses

  string getAPrimaryQlClass() { none() } // overridden by subclasses

  final string getPrimaryQlClasses() { result = concat(this.getAPrimaryQlClass(), ",") }

  ElementBase getResolveStep() { none() } // overridden by subclasses

  final ElementBase resolve() {
    not exists(getResolveStep()) and result = this
    or
    result = getResolveStep().resolve()
  }

  predicate isUnknown() { Ipa::convertElementToDb(this).(Db::Element).isUnknown() }
}
