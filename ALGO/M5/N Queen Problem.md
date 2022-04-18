
8 Queen Problem is a classic combination problem which requires us to place 8 queens on a $8\times 8$ matrix, such that there is no **Attack** formation between any two queens. Attack position refers to Queens being in the same row, same column or diagonal to each other.

Numbering the rows and columns from 1 to 8 in the matrix. The queens are also numbered from 1 to 8 (with a supposed Q prefix) as
$[Q_1,Q_2,Q_3,...Q_8]$
Since each queen must be on a different row, we assume that $Q_i$ lies on the $i_{th}$ row.
All solutions are therefore representable in 8 tuples $(x_1..x_8)$ where $x_i$ is the column queen $i$ is placed. Explicit constraints are that 
$S_i=\{1,2,3,4,5,6,7,8\}$
$1\le i\le8$

Therefore the solution space consists of $8^8$ 8-tuples. The implicit constraints are that 
${x_i}'s$ cannot be same,
no two queens can be on the same diagonal.

First implicit constraint implies that solutions are all permutation of 8-tuple, reducing solution space from $8^8$ to $8!$
For second implicit constraint we develop a function, that checks if two queens lie on the same diagonal.

In matrix, all elements in the left diagonal has same r-c value and all elements in the right diagonal has same r+c value. Suppose Q1 lies at position (i,j) and Q2 lies at (k,l).
Then queens lie in same diagonal if,
$i-j=k-l$ or $i+j=k+l$
A combination of both gives $|j-l|=|i-k|$
This combination is placed into the function for second constraint. The complete backtracking method is constucted via help of both constraints.

The simple algorithm goes as follows:
```
START
Start from the leftmost column
If all queens are placed correctly, print configuration
Check for all rows in the currect column
	If queen placed safely, mark row and column, and recursively check if approaching in the current configuration yields a solution
	if yes return true else unmark and try other rows
if all rows tried and solution not obtained, return false and backtrack
END
```
