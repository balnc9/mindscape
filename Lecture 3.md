let rec last list = 
match list with
[] -> []
|[head] -> [head]
|head::rest -< last rest


let member lst x = 
	match list with
	|[] -> false
	|h::t -> h = x || member t x

let rec insert list x = 
	match list with
	|[] -> x
	|h::t -> if x < h then x::list 
		else h::insert t x


(insertion sort)
let rec sort list = 
	match list with
	|[] -> []
	|[x] -> [x]
	|first::rest -> insert (sort rest) first


let rec remove list x = 
	match list with
	|[] -> []
	|h::t -> if h = x then remove t x
		else h::remove t x

