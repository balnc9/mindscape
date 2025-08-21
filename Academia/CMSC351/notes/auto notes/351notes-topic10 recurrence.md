*A) Maximum Contiguous Sum*: For a list of length n we:
(Divide + Conquer)
- Find MCS of the half lists
- find straddling max
- take max of those 3.
If T(n) = time for a list of length n then:
T(n) = 2T(n/2)+Linear + Constant
	   (2 half lists) +    max of 3

2) Semiformal defn: A *recurrence reln* consists of:
- An expression for T(n) in terms of smaller n-values.
- Some base cases (sometimes)

	made up ex: T(n) = T(n/2) +7
	- w/ T(1) = 5
	or T(n) = 2T(n/2) + n + 1
	- w/ no base case

notes: 
- T not nec. time could use f(n)
- sometimes have more than 1 base case
- usually have the round down/up symbols


Solving for T
if we have a RR w/ base case(s)
we can find T(n)
ex: sps T(n) = 3T(L n/2 \_| ) + n^2 + 1
w/ T(0) = T(1) = 4
then T(2) = 3T(L 2/2 \_|) + 2^2 + 1 = 3\*T(1) + 5= 17
T(3)= 3T(L 3/2 \_|) + 3^2 + 1 = 3\*T(1)+10 = 22
- great for small T but otherwise :(

What else to do?
- Somehow find a "closed formula" for T(n) meaning not referencing earlier T (**Called digging down, what we will do NOW**)
- If not, perhaps get θ, O, Ω? (*later*)

**Digging Down**
the idea is to apply the formula recursively until we see a pattern
ex: T(n) = 2T(n-1) + 3 (*a little different b/c it is n-1 not just n*)
T(1) = 7
- Think of the function as a black box. T(?) = 2T(?-1)+3
- plug the function into itself
- -> T(n) = 2 [2T(n-2)+3]+3 = 2^2 T(n-2) + 2 \* 3 + 3
- -> T()...
- ...
- Goes to T(n)  = 5 \* 2^n - 3

ex: T(n) = 2T(n/2) + n (*sort of like max contig sum*) 
w/ T(1) = 3                  again, think of T(?) = 2T(?/2) + ?
T(n) = 2[2T(n/4)+n/2]+n = 2^2 \* T(n/4) + n + n = 4\*T(n/4)+2n
T(n) = 2^2[2T(n/8)+n/4]+n = 8\*T(n/8)+n + n = 8\*T(n/8)+2n
- Identify pattern. $T(n) = 2^k * T(n/2^k) + kn$
- Ends when $n/2^k = 1$ b/c we get T(1) inside
- $n/2^k=1$ -> $2^k=n$ -> k=lgn (*plug in*)
T(n) = $n*T(1)+nlg(n)$ *can plugin T(1)*
T(n) = $3n+nlg(n)$
*Found closed formula! :)*

messy ex.
T(n) = $3T(n/2) + 4$
w/ T(1) = 5
- $T(n) = 3[3T(n/4)+4]+4$ ->$9T(n/4)+16$
- T(n) = $3[9T(n/8)+16]+4$  -> $27T(n/8)+64$
T(n) = $3^k*T(n/2^k)+4^k$
Ends when n/2^k = 1 b/c we get T(1) inside
-> $n/2^k = 1 -> 2^k = n -> k = lgn$ *plugin*
$T(n) = 3^lgn * T(1)+n^2$
-> T(n) = $3^lgn*5+n^2$

log facts:
*Change of Base*: $log_b a=(log_c a)/(log_c b)$
for usage: $log_2 n = (log_c n)/(log_c 2)$   ->   $(log_3 n)/(log_3 2)$
- this is b/c $1/log_b a = log_a b$
