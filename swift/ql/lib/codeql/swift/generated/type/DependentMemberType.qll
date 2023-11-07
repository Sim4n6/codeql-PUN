// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `DependentMemberType`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.decl.AssociatedTypeDecl
import codeql.swift.elements.type.Type

module Generated {
  class DependentMemberType extends Synth::TDependentMemberType, Type {
    override string getAPrimaryQlClass() { result = "DependentMemberType" }

    /**
     * Gets the base type of this dependent member type.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateBaseType() {
      result =
        Synth::convertTypeFromRaw(Synth::convertDependentMemberTypeToRaw(this)
              .(Raw::DependentMemberType)
              .getBaseType())
    }

    /**
     * Gets the base type of this dependent member type.
     */
    final Type getBaseType() {
      exists(Type immediate |
        immediate = this.getImmediateBaseType() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }

    /**
     * Gets the associated type declaration of this dependent member type.
     */
    AssociatedTypeDecl getAssociatedTypeDecl() {
      result =
        Synth::convertAssociatedTypeDeclFromRaw(Synth::convertDependentMemberTypeToRaw(this)
              .(Raw::DependentMemberType)
              .getAssociatedTypeDecl())
    }
  }
}
