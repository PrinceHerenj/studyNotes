#### [[Knapsack Problem]]
#### 0 1 Knapsack using Dynamic Programming
Knapsack Limit = 8
| Profit | Weight |
| ------ | ------ |
| 1      | 2      |
| 2      | 3      |
| 5      | 4      |
| 6      |  5      |


| Weight-> | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   |
| -------- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Objects  |     |     |     |     |     |     |     |     |     |
| 0        | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| 1        | 0   | 0   | 1   | 1   | 1   | 1   | 1   | 1   | 1   |
| 2        | 0   | 0   | 1   | `2` | 2   | `3` | 3   | 3   | 3   |
| 3        | 0   | 0   | 1   | 2   | `5` | 5   | `6` | `7` |7   |
| 4        | 0   | 0   | 1   | 2   | 5   | `6` |   6  | 7 | `8`    |

#### Algorithm
* Incrementally add objects
* Change when maxProfit greater when objects used in combination

#### Optimal Substructure Equation
$V$ is Object Weight Matrix
$V[i,w]=max\{V[i-1,w], V[i-1,w-w[i]]+p[i]\}$

#### Solution
* Take maxProfit, here = 8. 8 is only obtainable using 4th object, so
| $x_1$ | $x_2$ | $x_3$ | $x_4$ |
| ----- | ----- | ----- | ----- |
| false | false | false | true  |
	4th object weight is 6
	remaining profit to be found out in sequence = 8 - 6 = 2
* Find where a profit of 2 was introduced in the matrix
	  2 first appeared when added adding 2nd object $[2,3]$
	  so add 2nd object to solution
| $x_1$ | $x_2$ | $x_3$ | $x_4$ |
| ----- | ----- | ----- | ----- |
| false | true  | false | true      |

which is desired solution