When an algorithm contains a recursive call to itself, its running time is described by a **recurrence equation** or simply **recurrence**. 
* It describes running time on a problem of size n in terms of the running time on smaller inputs.
* Mathematical Tools are used to solve recurrence and provide bounds on the performance of the algorithm.

Therefore a Recurrence is an equation or inequality that descirbes a function int terms of its values on smaller inputs.

$T(n)=\begin{dcases}\theta(1),& \text{if } n\le c\\ aT(n/b)+D(n)+C(n), & \text{otherwise} \end{dcases}$

where
$a$ is number of sub-problems.
$1/b$ is size of original problem.

**Recursion Tree**
Recursion Tree method is a representation of an iteration method which is in the form of a tree where at each level nodes are expanded.

#### Recurrence Algorithms
There are three methods for solving recurrences.
* [[Substitution Method]]: a bound is guessed and induction used to prove our guess
* [[Recursion Tree method]]: converts the recurrence into a tree whose nodes represent the costs incurred at various levels of the recursion. Bounding summation techniques are used to solve the recurrence.
* [[Master's Theorem]]: provides bounds for the recurrences of the form
  $T(n)=aT(n/b)+f(n)$ where $a\ge1, b\gt1,f(n)\text{ is function at root level of recursion tree}$ 

#### [[Divide and Conquer]]
#### Substract and Conquer Master Method
Recurrences in the form
$aT(n-b)+f(n)$ are solved using master's theorem in the following method

if $a<1,\ T(n)=O(n^k)$
if $a=1,\ T(n)=O(n^{k+1})$
if $a>1,\ T(n)=O(n^ka^{n/b})$


[[Problems in Tutorial Sheet]]
#module