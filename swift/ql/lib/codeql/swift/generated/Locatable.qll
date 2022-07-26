// generated by codegen/codegen.py
private import codeql.swift.generated.IpaTypes
private import codeql.swift.generated.Db
import codeql.swift.elements.Element
import codeql.swift.elements.Location

class LocatableBase extends Ipa::TLocatable, Element {
  Location getImmediateLocation() {
    result =
      Ipa::convertLocationFromDb(Ipa::convertLocatableToDb(this).(Db::Locatable).getLocation())
  }

  final Location getLocation() { result = getImmediateLocation().resolve() }

  final predicate hasLocation() { exists(getLocation()) }
}
