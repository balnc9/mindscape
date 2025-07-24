**BINARY SEARCH!**
intro: given a sorted list, how can we find the index of an elt?
- can be or not be in the list. What if it isnt?
- Option: just a linear search, element by element
	- *Worst+Average Case θ(n)*
	- We'd like to do better than this.
High level: check the middle elt
- If == target, DONE!
- if middle < target, then the target is to the right
- if middle > target, look for target left
repeat until we find the target (or Don't)
ex. 
- ![[Pasted image 20250724144026.png]]
Quite simple actually.

**Pseudocode**
![[Pasted image 20250724144823.png]]

**Time!**
A) Best Case: Target == A[C] for the first C checked. (Return C)
- C1 runs then C2 runs, that's it θ(*1*)
B) Worst Case: if the target is NOT in the list.
- After the first iteration, the len of the list is floor(n/2).
- 2nd iteration, len(list) = n/4, 3rd, n/8, ...
	- K iterations, n/2\*k
- We reach L == R when n/2k = 1, so k=lgn
- It does one more iteration when L == R ends w/ L > R
- so it does 1+lgn iterations of the while loop
- Time is T(n)= C1 + C2(1+lgn) + C3
	- this time is θ(*lgn*) (better than linear sort as stated above)
C) Average Case: Given a list, let's see how long it takes to find each elt and average that.
assume the elt is in the list, and list len is *"nice" (1, 3, 7, 15, 31)*
- Time is θ(lgn)