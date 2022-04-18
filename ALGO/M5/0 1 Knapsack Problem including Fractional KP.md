#### Knapsack Problem
in general, knapsack problem involves a bag with limited bag capacity and each item has some weight and value.
The problem is to select items such that weight limit is not exceeded while keeping the maximal values of individual items.

0/1 Knapsack implies that the items cannot be broken down, and are either in or out.
Fractional Knapsack impies that the items can be broken down, to increase total value.

0/1 Knapsack is best solved with dynamic programming; Fractional with Greedy Approach.

#### 0/1 Knapsack using Branch and Bound.
Branch and Bound is the best solution when weights are not integers

##### Algorithm
* Sort all items in decreasing order of ratio of weight/value
* Initialize maximum profit = 0
* Create Empty Queue
* Create dummy node of decision tree and enqueue it to Q.
* Do while Q not empty
	* Extract an item from Q. Let it be u
	* Compute profit of next level node. If profit more than maxProfit, update maxProfit
	* Compute bound of next level. if bound more than maxProfit, add next level node to Q.
	* Consider the case when next level node is not considered as part of solution and add a node to queue with level as next, but weight and profit without considering next level nodes.

![[Pasted image 20220415223317.png]]