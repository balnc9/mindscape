[[CMSC330 Header + Node Link]]
[[Academia]]



example (imperative languages):
int g = 10;
int foo(int n){
	g = g + 1;
	return n + g;
}
foo(1) ==> 11
foo(1) ==> 12
foo(1) + foo(2) != 2 * foo(1)
	because foo() has a side effect
however, in a functional programming language,
bar(1) + bar(1) == 2 * bar(1)


utop is interactive shell, gives quick output
- good for quick examples
ocamlc prog.ml to compile code
- ./prog.ml
dune build is same as compiling, essentially the same as ocamlc
- builds dependencies automatically

if 2 > 1 then 10 else 20;;
- if and else must have same type (10 and 20 spot)
(*Functions*)
let double x = 2 * x;;

(*int -> int*)
(*type inference, OCaml infers the type for you. In this case, via the * operator*)
- you can also manually annotate types
- let double (x:int):int = 2 * x;;
- vs let double x = 2 * x;;

Identity function:
let identity x = x;;
('a -> 'a)
- Polymorphic, can take any type
- Given function, be able to infer a type return
let bar x y = x ^ y;;
- String value returned because the ^ operator is a string function
- string(x) -> string(y) -> string

let **rec** fact n = 
	if n = 0 then 1 else n * fact(n-1);;
- (int -> int)
	- = operator can only operator on variables of the same type
	- so n = 0 must be comparing 2 ints, and n must be int
	- the then branch returns int, so the else MUST also return int
	- int -> int

(::) cons operator: prepends an item to the beginning of the list
1::[];; -> int list = [1]
2::(1::[]);; -> int list = [2; 1]
[1;2;3;4;5];; int list
- All items in the list must have the same type.
- However, lists are immutable and unchangable
	- Even if you prepend an element, it will not save later. 
Pattern Matching
	match exp with
	|pattern1 -> exp 1
	|pattern2 -> exp2

match 2>1 with
|true -> 1
|false -> 2
Like a switch case statement

let neg x = 
	match x with
	| true -> false
	| false -> true
	|_ -> true (incorrect here, but default case operator)
;;

let even3 x = x mod 2 = 0;

Most common use case of match is to destruct a list
let isEmpty list = 
match list with
	| []-> true
	| __ -> false
;;

let hd list = 
match list with
	| [] -> failwith "no head"
	| h :: t -> h
;;

let tail list = 
match list with 
	[]->[]
	| _ ::t -> t
;;


