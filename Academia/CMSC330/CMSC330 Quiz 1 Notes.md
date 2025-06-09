- OCaml code can be compiled.
- The ***guard expression*** must be of type Boolean (in OCaml)
	- **Guard Expression** is the conditional block of a statement
	- For example, in C, this is valid
		- ``` if(1){
		    printf("This statement will always print because it is always true!");
		  }```
		- But in OCaml, you cannot have a non Boolean type value in the conditional part of the if statement.
OCaml can be compiled using ocamlc, ocamlopt, dune.

Every OCaml expression (a statement, in imperative languages. Yet to be evaluated) has a **type** and evaluates to a **value**.
OCaml is statically typed but uses type inference. For example, in a function if a variable x is multiplied by a integer constant (e.g 7), x is inferred to be an integer.
- Both branches of return values must be of the same type. 

***Primitive Types***
- int, float, bool, string, char are primitive types.
- Arithmetic ops are type specific
	- +, -, \*, / -> **int**
	- +.   -.     \*.     /.' -> float
Functions
OCaml can define **anonymous functions**
```fun x -> x + 3```
Polymorphic functions use type variables (Essentially Generics from Java) : (\`a, \`b)
```let id x = x (*`a -> `a*)
let fst x y = x (* `a -> `b -> `a*)```
- All functions are curried meaning that multi-argument functions are defined as **chained 1-arg functions**

