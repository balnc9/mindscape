big O is an *upper bound*
big Ω (omega) is a *lower bound*
big θ (theta) is a *tighter bound*, providing a range in which the function will lie after a certain value.

All of O,Ω,θ have their uses
- Generally, θ is best because it has a *lower AND upper bound*
- Usually, O is for when we can't use θ
	- Or when O is 'good enough'
- Ω usually not used but sometimes important *alone*

no examples for big θ, because θ proofs are just the other proofs (O, Ω) in conjunction.
- the Ω proofs are similar to the O proofs.

ex. Prove that 3x^2 + 1 = Ω(x^2)
need to find x0, B>0 such that if x>=x0 then 3x^2 + 1 > Bx^2
*Note: when dealing with Ω, we can drop additive terms (opposite to big O proofs)*
here: 3x^2 + 1 >= 3x^2 always, so Ω defn is satisfied w/ x0 = 0 and B = 3.

similar ex: 3x^2 + lgx = Ω(x^2)
can drop the + (in this case it is +lgx) (but lgx>=0 when x>=1)
so: if x>=1 then 3x^2 + lgx >= 3x^2, so the defn is satisfied w/ *x0=1 and B=3*

Prove that n^2 -n = Ω(n^2)
can't remove the minus, prove the n part because the n^2 part is already fine.
B/c we're doing n^2 -n and we want n^2 -n >=n^2 -?
the ? we are subtracting on the right side must be ? >=n
- this is b/c the left side is >= right, and the other parts are equal, so we need to subtract more on the right to make it smaller.
Tempting to make ?=n^2, but that makes n^2 -n >=n^2 - n^2 which can't satisfy the defn because that makes
- -> n^2 -n >=0 and B cannot be 0.
Better: make ? = 1/2 -> n^2 -n >= n^2 - 1/2\*n^2
- We need to find for what values 1/2\*n^2 >= n
- for all n>=2, this holds, so
that makes n^2 -n >=1/2\*n^2 for all n>=2
so the defn is satisfied with x0=2 and B=1/2

last ex. prove 5nlgn + n -100 lgn = Ω(nlgn)
so prove that 5nlgn + n - 100lgn >=B\*nlgn
(ignore the +n, focus on -100lgn) -> 5nlgn +n -100lgn >= 5ngln - 100lgn

- when is 100lgn<=(some mult)\*nlgn? for what values of n?
	- Less than because we subtract 5nlgn on the left side which we need to be greater so we need to find values of -100lgn that are 
Try some mult = 1: 100lgn <= 1\*nlgn -> 100 <= n -> n >= 100
now we have proof:
5nlgn+n-100lgn = Ω(nlgn) defn is satisfied with 
5nlgn + n - 100lgn >= 5nlgn- 100lgn >= 5nlgn - nlgn = 4nlgn
so defn is satisfied with B = 4 and x0 = 100