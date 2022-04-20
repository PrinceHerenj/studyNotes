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

#### [[Divide and Conquer]]
#module