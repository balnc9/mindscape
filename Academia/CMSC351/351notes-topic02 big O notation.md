
*Formal Definition of O*
- We write f(x) = O(g(x)) to represent: ![[Pasted image 20250721143829.png]]
There exists an X and C greater than 0 such that if x >= x0 then f(x) <= Cg(x)
if x>=4 then T(x) <= 2x^2
the definition is satisfied w/ x0 = 4 & C = 2

note: T(x) = O(x^2) (the coefficient 2 is not here)

Informal terms: f(x) = O(g(x)) means that *eventually* f(x) <= a *multiple* of g(x)
*eventually* meaning when x>=x0
*a multiple of* meaning C

***The Goal***
Typically we will be studying algorithms and we'll have some expression T(n) for time required.
Typically we will also not know T(n) exactly, but we will want to say something like:
T(n) = O(n^2) : (Eventually, T(n) doesn't take longer than a multiple of n^2 , so n^2 is the UPPER BOUND of time complexity)
- Where does the value inside of the O(?) come from?
- We compare T(n) against some value to find the UPPER BOUND
**Important**: Suppose we have 2 algorithms with times:
T1(n) = O(n^2)
T2(n) = O(n)
So we know that eventually T1(n) <= C1\*n^2
and that eventually T2(n) <= C2\*n
So even though we don't know what values C1 and C2 are, we can say that T2 is the faster algorithm (for large n).

Informally: When we informally describe alg. speed, we might say:
- Bubble sort is O(n^2)
- Merge sort is O(n log(n))
- b/c n log(n) <= n^2 for large n, merge sort is quicker for large n

Practice some proofs!
note: All of this is about organizing algebra
Recall: f(x) = O(g(x))
Proof goal is to find an x0 and C which fulfill this defn and show that they work.

ex. Prove 3x^2 -1  = O(x^2)
goal: find x0 and C such that if x>=x0 then 3x^2 -1 <=Cx^2
**Rule**: with O, subtractions can be dropped!
proof here is that if x>=0 then 3x^2 -1 <= 3x^2, so defn fulfilled. w/ x0 = 0 and C = 3

ex. Prove 3x^2 + 10 = O(x^2)
3x^2 + 10 = 3x^2
**Idea**: You cannot say that 3x^2 + 10 <= 3x^2 for any x > 0, so examine the +10 instead.
Ask: is 10<=some mult. of x^2? Eventually?
- 10 <= x^2 -> $$\sqrt{10} <= x$$
- Proof: if x>=sqrt(10) then 3x^2 + 10 <= 3x^2 + x^2 = 4x^2
- so defn: satisfied with x0= sqrt(10), C = 4

Prove xlgx +x -3 = O(xlgx)
*(lgx = log2x)*
1) xlgx +x -3 <= xlgx + x
2) Leave xlgx alone, its the x that is weird.
3) is x itself <=some mult. of xlgx eventually?
	1) is x<=xlgx for x?
	2) Yes, if 1<=lgx (divide both sides by x)
	3) -> 2^1 <=2^lgx or 2<=x
	So: proof if x>=2 then x <=xlgx and so:
		xlgx +x -3 <= xlgx + x <= xlgx + xlgx = 2xlgx
so defn is fulfilled with x0 = 2 and C = 2.

Prove that x^2 lgx + 100/x^2 = O(x^3)



Closing notes; 
(A) be cautious. Knowing f(x) = O(x^2) it could also be O(something else!)
- e.g if f(x) = O(x^2), then f(x)=O(x^3) and O(x^4) and on and on...
- So the goal is to get the smallest possible "nice" function
- Some "nice" functions: (1, lg(n), n, nlg(n), n^2, n^2(lg(n)), n^3)
						- 2^n, 3^n, 4^,
						- n!
