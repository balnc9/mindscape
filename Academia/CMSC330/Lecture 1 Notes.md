[[CMSC330 Header + Node Link]]
[[Academia]]
*Material*
**What is a language and how do we use it?**
- A language is a way of communicating, but its not that simple
**How do we express ourselves with language?**
- **Semantics** : the meaning of sentences + languages
- **Syntax** : the structure of the language (keywords, formatting expectations, etc.)
	- Syntax determines what is valid in a language
	- For example, if you write a C function in Java, the compiler will destroy you
	- Another example: *an array will always be an array, but the code you use to create one and use one will differ between languages*

**Why are there so many languages?**
Computers can only understand **machine code**. But we don't use that.
- We use programming languages because they contain shortcuts to otherwise complex machine code
- For example, manually pushing and popping data from the stack frame is tedious and unnecessary when we have programming languages that can do it for us. All we need to do is call function().
Language features, or special shortcuts in a language, are very important. This is why there are so many languages, because different languages have different shortcuts and some are better for different things.

**1.4 Language Features**
- No iterative structures in LISP, purely a recursive language.
Some languages have ways of expressing things or executing code that others do not.

Imperative Languages (aka *procedural* or *von Neumann*)
- Building blocks are procedures and statements.

Functional (Applicative) Languages:
- Favor **immutability**
	- Variables are never re-defined
- Functions are **higher order**
	- Passed as arguments, returned as results
		- LISP(1958)
		- ML(1973)
		- Scheme(1975)
		- Haskell(1987)
		- OCaml(1987)

**What is OCaml?**
OCaml is mostly a functional language. Developed in 1987, and is a dialect of ML
OCaml has: 
- Natural support for **pattern matching**
	- Generalizes *switch/if-then-else* - very elegant!
- Full featured **module system**
	- Much richer than interfaces in Java or headers in C
- Includes **type inference**
	- Ensures compile-time type safety.

A key motivator for writing code in C/C++ abstractions are low-cost.
- Data is represented minimally. No metadata required.
- Stack-allocated memory can be freed quickly
- Malloc/free allows for full control, no Garbage Collector or outside mechanisms.

No-cost abstractions in C/C++ are insecure.
**Rust** is a safe language, it has safe zero-cost abstractions. It's type system enforces *ownership* and *lifetimes*. Rust is used to build real world applications like web-browsers.

**Compilation**
- When source code is translated (compiled) to another language