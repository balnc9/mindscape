insertion sort is the third of the basic sorting algorithms

*high level*: suppose we have a list a= (6 5 1 3 7 4 2)
step 1: start @ index 1 (5) is anything to the left of a[1]=5 greater than 5?
- Yes! so pickup the 5 and slide the 6 over, and insert the 5
- a= [5 6 1 3 7 4 2]
step 2: same w/ a[2]=1. Is anything to the left of 1 greater than 1?
- Yes! Both 5 and 6! 
- Pickup the 1, slide the 6 over, THEN slide the 5 over, then insert the 1.
- a=[1 5 6 3 7 4 2]
Note: the first i+1 elements are sorted, not necessarily in the correct order, but sorted up to that point.
(The 5 and 6 will move again.)

step 3: same w/ a[3]=3. Is anything to the left of 3 greater than 3? 
- Yes! 5 and 6!
- Pickup the 3, slide the 6 over, then the 5 over, then insert the 3 because the 1 is less than 3.
- a=[1 3 5 6 7 4 2]
s4:a=[1 3 5 6 7 4 2] (*seven is already in its correct sorted pos, nothing larger to the left*)
s5:a=[1 3 4 5 6 7 2]
s6:a=[1 2 3 4 5 6 7]


**The Pseudocode**
- Start loop with i= **1** to **n-1** because there is no need to sort the first element (a list of 1 elt is sorted)
![[Pasted image 20250724134307.png]]
- Use A[j+1] because you shift the elements from right to left, towards the right. So with A[j+1] = A[j], you are shifting one elt from the last elt before the picked elt to the right, until there are no more elts to move or the A[j] elt is greater than the picked elt which would stop the iterations and cue the insertion after at A[j+1].

**Time Complexity Analysis**
![[Pasted image 20250724135837.png]]
**Best Case**: the list is sorted and the while loop fails every time.
- C1 is the area before the while loop, happens every loop
- C2 is the actual check of j>=0 && key<A[j], occurs THEN fails.
T(n) = (n-1)(C1 + C2) = **θ(n)**
**Worst Case**: the list is in reverse order, so the while loop passes for j = i-1,i-2,...,0 and fails @ j=-1. (*i* times)
- Everything needs to be shifted
![[Pasted image 20250724141021.png]]
...=**θ(n^2)**



**Average Case**:
- What does avg case even mean?

**Inversions**
defn: Given a list A, an **inversion** is a pair of indices (i,j) w/ i<j but A[i] > A[j]
- i.e: the elements are out of order (2,1)
ex. 
- ![[Pasted image 20250724141416.png]]
- The indices are in blue and elements are in purple. How many inversions?
step 1: look at A[0]=6, then look for elts to the right that are smaller. (**5 inversions**)
s2: A[1]= 5, there are (**4 inversions**)
s3: A[2]=1, (**0 inversions**)
s4: A[3]=3 (**1 inversion**)
s5: A[4]=7 (**2 inversions**)
s6: A[5]=4 (**1 inversion**)
s7: A[6]=2 (**0 inversions**)
A = (**13 total inversions**)

But how does this relate to the pseudocode and Average Case?
Each time an elt is shifted over, an *inversion* is well, Inverted or Corrected
ex: sps we have a list A= [1 3 5 7 2 10]
- and we are currently on our 4th iteration so we are looking at A[4]=**2**
- The 2 is out of order, involved w/ 3 Inversions (3,2) (5,2) (7,2)
- When we pickup 2 and shift each of 3 5 and 7 over, each shift corrects an inversion

Suppose there are I inversions.
![[Pasted image 20250724135837.png]]
Since the number of shifts = num of Inversions total, 
we know the # of inversions i = the # of times the while loop passes.
**So**: T(n) = (n-1)(C1+C4) + I\*(C2+C3) + (n-1)\*(C2)
		*(ignore while*) (*while loop pass*) (*while fails once for each i*) 
How is this related to average case?
- How many inversions could there be in a list of len n?
- Least : 0 (*if list is sorted*)
- Most : n choose 2 (n!/2!(n-2)!)(*if list is totally reversed*)
- Average : Seems reasonable that the *average number of inversions* is  ![[Pasted image 20250724143058.png]]
So the Max inversions / 2. Plug this into our T(n) and we get
Average = θ(n^2)


**Minutia**
A) Aux Space: θ(1) : loop var, swap var, key
B) Stability: Stable (shifts the elements in order)
C) In-Place: YES! Doesn't use outside data structures.

