Review
(*anonymous functions*)
let next x = x + 1;;
let twice f n = f (f n);;

twice next 10;;
(\* will return int = 12 \*)
(*next will be called once on 10 -> 11, then again on 11 -> 12*)
twice (fun x -> x * 2) 100;;

(*map*)
map(fun x-> x * 10) [1;2;3;4;5];;
Applies the function to **each** item in the list, 10 \* each item

List.fold_left (fun x y -> x + y) 0 [1;2;3;4;5];;
(\* Adds everything in the list\*)

*tomorrow we have lecture and discussion on Friday for this week*

tail recursion: no additional operations, no need for storage of values in stack frames. 
The recursive call is the *last* thing that happens.