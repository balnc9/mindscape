(\*Records\*)
type point = {x:int; y:int};;
(*analogous to structs in C*)

let p1 = {x=100;y=200};;
(\*OCaml automatically infers the type of p1 based on the record fields/types\*)

p1.x;; (\*returns int = 100\*)
p1.y;; (\*returns int = 200\*)
(\*access the structs the same as in C\*)

let p2 = {y = 10; x = 20};;
(\*Valid, the order does not matter\*)


(**Data Types**)
- all items **in** the list must have the same **type**
So how do I define a list like this?
[1;1.5;"hello"]
A user defined type!

``` 
type gen = Int of int
	|Fl or float
	|Str of string
;;
Int 10;;
Fl 1.5;;
Str "Hello";;
```
gen can an int, float, or string.
Each subsequent call after the type declaration will have type *gen*
So, this is valid.
``` [Int 10; Fl 1.5; Str "Alice"];; ```

```
type coin = Head |Tail;;
let t = [Head; Head; Tail; Head];; (\*coin list\*)

let rec count_head l =
	match l with
	[]->0
	|h::t-> if h = Head then 1 + count_head t
			else count_head t
;;
```
Calling the function count_head on coin list t should return 3!

Building on the gen list:
```
let print x = 
	match x with 
	Int i ->Printf.printf "%d\n" i
	|Fl f ->Printf.printf "%f\n" f
	|Str s ->Printf.printf "%s\n" s
;;

List.map print [Int 10; Fl 1.5; Str "Alice"];;
```
You can use records to print and use lists in many cases, allowing for higher perspective functionality.
You can create custom types.

(\*Option types\*)
```
type option = None
	|Some of `a
;;
```
Sometimes it can have a generic value type, sometimes it won't have one. 

**(\*Use Cases\*)**
```
let hd lst = 
	match lst with
	[] -> ??
	|h::_ -> h
```
\*Note: you cannot return just the head of a list because a list in OCaml is defined as a head prepended to the rest.
So to return a head, you have to return a list with just the head value, not return the head\*
Use option types to return a value, and evaluate that and be able to handle both existence + nonexistent cases.
- Replacement for NULL checking in Java, C, other langauges
	- (\*Very important use case\*)

Whenever you call head, you always have to handle it with a match case.

```
type mylist = Nil | const of int * mylist

Cons (10, Nil);;
let t = Cons (10, Cons (20,Cons (30,Nil)));;

let rec sum l = 
	match l with
	Nil->0
	|Cons(a,b) -> a + sum b;;
```
This is an example of how option types can be used to evaluate linkedlists to handle Null cases and safely traverse data structures

(\*Binary Tree\*)
```
type `a tree = Leaf
		|Node of `a tree * `a * `a tree
(*Created tree type*)
Leaf;; (*`a tree*)
let t1 = Node(Leaf,10,Leaf);; (*int tree*)
let t2 = Ndde(t1,100,t1);;
``` 

tree structure:
      100
	10    10
   l  l  l  l

```
let rec sum_t t = 
	match t with 
	Leaf ->0
	|Node(l,v,r) -> v + sum_t l + sum_t r
;;
```
