#### Definition
Algorithm for optimzation prblems typically go through a sequence of steps, with a set of choices at each step. For many optimization problems, using dynamic programming to determine the best choices is overkill; simpler, more efficient algorithms will do.

A **greedy algorithm** design always makes the choice that looks best at the moment. That is, it makes a locally optimal choice in the hope that this choice wil lead to a globally optimal solution.

Greedy algorithms do not always yield optimal solutions, but for many problems they do.

**Elements/Steps** for greedy stratergy
* Determine [[Optimal substructure]]
* Develop recursive solution.
* Proove safe to make greedy choice.
* Develop recursive algorithm
* Convert the recursive algorithm to iterative algorithm.

##### Activity Selection Problem Example
Consider the following 6 activites sorted by theiry start finish times.
| times    |     |     |     |     |     |     |
| -------- | --- | --- | --- | --- | --- | --- |
| start[]  | 1   | 3   | 0   | 5   | 8   | 5   |
| finish[] | 2   | 4   | 6   | 7   | 9   | 9    |
A person can perform at most four activites.

**Algorithm**
* Sort according to their finishing time.
* Select the first activity from the sorted array and print it.
* For second activity if, $startTime(2)\ge finishTime(1)$, print it.
* Repeat step 3 till end.

#### [[Knapsack Applications]]
#### [[Job Sequencing]]
#### [[Optimal Merging of Arrays]]
#### [[Minimal Spanning Tree]]
#### [[Dijkstra's Algorithm]]
#### [[Huffman Encoding]]

#module

