
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
