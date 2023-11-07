// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `UnarySyntaxSugarType`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.SyntaxSugarType
import codeql.swift.elements.type.Type

module Generated {
  class UnarySyntaxSugarType extends Synth::TUnarySyntaxSugarType, SyntaxSugarType {
    /**
     * Gets the base type of this unary syntax sugar type.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateBaseType() {
      result =
        Synth::convertTypeFromRaw(Synth::convertUnarySyntaxSugarTypeToRaw(this)
              .(Raw::UnarySyntaxSugarType)
              .getBaseType())
    }

    /**
     * Gets the base type of this unary syntax sugar type.
     */
    final Type getBaseType() {
      exists(Type immediate |
        immediate = this.getImmediateBaseType() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }
  }
}
