// generated by codegen/codegen.py, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `MacroDecl`.
 */

private import codeql.swift.generated.decl.MacroDecl

/**
 * A declaration of a macro. Some examples:
 *
 * ```
 * @freestanding(declaration)
 * macro A() = #externalMacro(module: "A", type: "A")
 * @freestanding(expression)
 * macro B() = Builtin.B
 * @attached(member)
 * macro C() = C.C
 * ```
 */
class MacroDecl extends Generated::MacroDecl { }
