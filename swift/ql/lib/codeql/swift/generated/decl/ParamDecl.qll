// generated by codegen/codegen.py
/**
 * This module provides the generated definition of `ParamDecl`.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.decl.PatternBindingDecl
import codeql.swift.elements.decl.VarDecl

module Generated {
  class ParamDecl extends Synth::TParamDecl, VarDecl {
    override string getAPrimaryQlClass() { result = "ParamDecl" }

    /**
     * Holds if this is an `inout` parameter.
     */
    predicate isInout() { Synth::convertParamDeclToRaw(this).(Raw::ParamDecl).isInout() }

    /**
     * Gets the property wrapper local wrapped variable binding of this parameter declaration, if it exists.
     *
     * This is the synthesized binding introducing the property wrapper local wrapped projection
     * variable for this variable, if any.
     */
    PatternBindingDecl getPropertyWrapperLocalWrappedVarBinding() {
      result =
        Synth::convertPatternBindingDeclFromRaw(Synth::convertParamDeclToRaw(this)
              .(Raw::ParamDecl)
              .getPropertyWrapperLocalWrappedVarBinding())
    }

    /**
     * Holds if `getPropertyWrapperLocalWrappedVarBinding()` exists.
     */
    final predicate hasPropertyWrapperLocalWrappedVarBinding() {
      exists(this.getPropertyWrapperLocalWrappedVarBinding())
    }

    /**
     * Gets the property wrapper local wrapped variable of this parameter declaration, if it exists.
     *
     * This is the synthesized local wrapped value, shadowing this parameter declaration in case it
     * has a property wrapper.
     */
    VarDecl getPropertyWrapperLocalWrappedVar() {
      result =
        Synth::convertVarDeclFromRaw(Synth::convertParamDeclToRaw(this)
              .(Raw::ParamDecl)
              .getPropertyWrapperLocalWrappedVar())
    }

    /**
     * Holds if `getPropertyWrapperLocalWrappedVar()` exists.
     */
    final predicate hasPropertyWrapperLocalWrappedVar() {
      exists(this.getPropertyWrapperLocalWrappedVar())
    }
  }
}
