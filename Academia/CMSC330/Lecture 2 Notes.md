[[CMSC330 Header + Node Link]]
OCaml Basics
***Compiler***
- translates code from high-level to lower-level programming language
	- e.g assembly language, byte code, machine code
- converts code *before* program runs
- run compiled code to get output
- Compiler optimizes program
***Interpreter***
- the interpreter translates live while code line-by-line *live* - while the program is running
- we get output when the code completes

***What is a functional language?***
- defines computations as *mathematical functions*
- *discourages* use of mutable state
*state* : the information maintained by a computation

**Functional vs. Imperative**
**Functional Languages**: 
- *Higher level of abstraction*: *What* to compute, not *how*
- *Immutable state*: easier to reason about (meaning)
- *Easier* to develop robust software
**Imperative Languages**:
- *Lower*: level of abstraction: *How* to compute, not *what*
- *Mutable* state: harder to reason about (behavior)
- *Harder* to develop robust software

in Imperative Programming, commands specify **how** to compute, by destructively **changing state**:
	x = x+1;
	a[i] = 42;
	p.next = p.next.next;

The **fantasy** of changing state (mutability)
- easy to reason about: machine does this, then this...
- 