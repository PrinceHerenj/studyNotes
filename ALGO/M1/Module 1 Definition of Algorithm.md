A blueprint of a program is known as an algorithm.
It is a well defined computational procedure that takes some set of values as input, and produces some set of values as output. Thus Algorithm is a set of steps to turn input into output. Also a tool for solving a well-specified computational problem.

Characteristics of Algorithm
* Input
* Output
* Definiteness
* Finiteness
* Effectiveness

#### Tradeoff Situation
When one thing is inversely proportional to another.
Tradeoff is a method to solve a problem in less time using high amount of storage or vice versa.

Space Time Tradeoff
Time Space Tradeoff

#### Complexity of Algorithm
* Function which gives time function (running time) or space function (memory utilized) in terms of input size
* Time complexity of a program is the amount of computational time which it needs to completion. Independent of Implementation and programming Language.
* Space Complexity of a program is the amount of storage that it requires for execution. Measured by the variables used by it

##### Algorithm Analysis
Analysis means to predict the resources that an algorithm requires. Resources such as memory, communication bandwidth, or computer hardware are primary concern of analysis occasionally, but it is the **computational time** that we want to measure at all times.
Analysis is done to identify the efficient solution.

**Running Time:** on a particular input, it is the number of steps executed.
**Size of Input:** Number of items in the input, eg array size

![[Pasted image 20220418214647.png]]
Worst Case Running Time: Longest running time defined in Insertion Sort as
$an^2+bn+c$

Average case Running Time:

Order of Growth: The leading term in running time (eg: $n^2$) is used to determine the order of growth. Represented as $\theta (n^2)$

##### Algorithm Design
Algorithms are designed with varioud approaches.
* Incremental Approach
* Divide and Conquer Approach
	* Divide: Problem subdivided into subproblems
	* Conquer: the subproblems are solved straighforwardly or in recursive manner
	* Combine: the solutions are combined

[[Asymptotic Notation]]
[[Soriting in Algorithms]]
