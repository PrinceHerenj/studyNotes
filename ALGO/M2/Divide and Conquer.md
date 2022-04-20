#### General Method
In DAC, problem is solved recursively applying three steps at each elevel
* **Divide** the prbolem into a number of subproblems that are smaller instances of the same problem.
* Conquer the subproblems by solving them recursively. If the subproblem sizes are small enough, however, just solve the subproblems in a straighforward manner.
* Combine the solutions to the subproblems into the solution fo rht original problem.

When subproblems are large enough to solve recursively, we call that the recursive case.
Base case: when the problem cannot be more recursed

#### Recurrence Algorithms
A base definition of [[Module 2 Recursive Algorithm Analysis|Recurrence Algorithm]].
There are three methods for solvign recurrences.
* [[Substitution Method]]: a bound is guessed and induction used to prove our guess
* [[Recursion Tree method]]: converts the recurrence into a tree whose nodes represent the costs incurred at various levels of the recursion. Bounding summation techniques are used to solve the recurrence.
* [[Master's Theorem]]: provides bounds for the recurrences of the form
  $T(n)=aT(n/b)+f(n)$ where $a\ge1, b\gt1,f(n)\ is\ given\ function$ 

#### [[Maximum Subarray Problem]]
#### [[Binary Search]]
#### [[Strassen's Matrix Multiplication]]
#### [[Merge Sort]]
#### [[Quick Sort]]

