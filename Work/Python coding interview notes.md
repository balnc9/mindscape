# VARIABLES
Python is dynamically typed: you do not have to declare the type of variables
Types are determined at runtime: you can re-declare variables with a different "type"

*Multiple Assignments*
n,m = 0, "abc"
- this works
*good:*
n = n + 1 
n += 1
*bad:*
n++

*None == null*
n = 4
n = None


# If statements
don't need parentheses
if n > 2:
 print(n)

elif instead of else if
parentheses are not required, but needed for multi-line conditions

logic AND is "and"
logic OR is "or"

# loops
n = 0
while n < 5:
    print(n)
     n-=1

for i in range(5):
goes from 0 to 4
5 is not included as the loop executes

for i in range(2,6):
2 3 4 5
- goes up to 6 not including 6

for i in range(5, 1, -1):
5 4 3 2
- goes from 5 to 2, decrementing -1

# math
#### division is decimal by default
5.2 = 2.5, not rounded to 2, decimal division

###### double slash rounds down
print(5 // 2)
- prints 2

this rounds down, meaning -3 // 2 -> -2 because it rounds down from -1.5 lower to -2

##### modulo
10 % 3 -> 1

except for negative values:
-10 % 3 -> 2

can import
"import math
print(math.fmod(-10, 3))"

##### some more math helpers
print(*math.floor*( 3 / 2))
print(*math.ceil*( 3 / 2))
print(*math.sqrt*(4))
print(*math.pow*( 3, 2))

##### if you need maximum and minimum values, use
float("inf")
float("-inf")

# arrays (lists)
arr = [1, 2, 3]
##### arrays can be used as a stack
arr.append(4)
arr.append(5)
print(arr) will print [1, 2, 3, 4, 5] 

arr.pop()
print(arr) will print [1, 2, 3, 4]

arr.insert(indexToInsert, value)
arr.insert(1, 7)
arr -> [1, 7, 2, 3, 4]
is O(n)

##### initialize arr with size n with default value of 1
n = 5
arr = [1] \* n
print(arr) -> [1, 1, 1, 1, 1]
print(len(arr)) = 5

##### -1 is not out of bounds, it's the last value
so
arr = [1, 2, 3]
print(arr[-1]) -> [3]
can use -2, -3, etc.

##### getting sublists (aka slicing)
arr = [1, 2, 3, 4]
print(arr[1:3]) -> [2, 3, 4]
including first value but not including second
print(arr[0:4]) -> [1, 2, 3, 4]

##### unpacking
a, b, c = [1, 2, 3]
helpful when you want to go through a group of pairs

##### loop through arrays
###### with index
for i in range(len(nums)):
###### without index
for n in nums:

###### with index and value
for i, n in enumerate(nums):
here i is the index
second is the value

##### loop through multiple arrays simultaneously
nums1 = [1, 3, 5]
nums2 = [2, 4, 6]

for n1, n2 in zip(nums1,nums2):
     print(n1, n2) -> [1, 2] ...
 
##### reversing array
nums = [1, 2, 3]
nums.reverse()

# sorting
##### sorting an array
arr = [1, 2, 3]
arr.sort()

and to sort in reverse
arr.sort(reverse=True)

can sort arrays of strings by alphabetical using arr.sort()
![[Pasted image 20250819004711.png]]

arr = [i for i in range(5)]
[0, 1, 2, 3, 4]

# 2d lists
arr = [[0] * 4 for i in range(4)]
\[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]\]

strings are similar to arrays
s = "abc"
print(s[0:2]) -> "ab"

anytime you modify a string it is considered a n time modification

strings can be converted into integers
integers can be converted into strings
str(123)
str(123) + str(456) -> "123456"
int("123")

ascii value of a character
print(ord("a"))

# queues
double ended by default

from collections import deque

queue = deque()
queue.append(1)
queue.append(2)
print(queue)

queue.popleft()
to dequeue, queue is now just [2]
queue.appendleft(1) -> [1, 2]
queue.pop() -> [1]

##### hashsets

useful b/c we can search and insert values in constant time
no dupes

myset = set()
myset.add(1)
myset.add(2)
print(myset)
print(len(myset)) -> {1, 2}

print(1 in myset) -> {True}
print(3 in myset) -> {False}

##### list to set
print(set([1, 2, 3]))

##### set comprehension
myset = {i for i in range(5)}

##### hashmaps aka dict
mymap = {}
mymap["alice"] = 88
mymap["bob"] = 77
no duplicate keys
![[Pasted image 20250819005752.png]]

print(len(mymap)) will give the number of keys in the hashmap
mymap["alice"] = 80

print("alice" in mymap) *searching for key in map in constant time*
mymap.pop("alice") *to remove the key*

looping through map
can loop through the keys and therefore access the values 
![[Pasted image 20250819010032.png]]

tuples 
tup = (1, 2, 3)
list but items cannot be modified after creation
mymap = {(1,2) : 3}
lists can't be keys 

##### heaps
import heapq

minheap = []
heapq.heappush(minheap, 3)
heapq.heappush(minheap, 2)
heapq.heappush(minheap, 4)

min is always at value 0
print(minheap[0]) -> 2
while len(minheap):
    print(heapq,heappop(minheap)) -> 2 3 4

the workaround to use max heaps in python is to multiply values by -1 when pushing and popping
![[Pasted image 20250819010543.png]]

to build heap from initial values, use *heapify*
![[Pasted image 20250819010621.png]]

# functions

def myFunc(n, m):
    return n \* m
![[Pasted image 20250819010718.png]]





