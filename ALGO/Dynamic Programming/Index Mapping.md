Given a limited range array contains both positive and non-positive numbers. Task: Search if some number is present in the array or not in $O(1)$.

#### Algorithm
>implication: negative numbers require 2d array
##### For storing
* Assign all values of hash as 0 in $hash[Max+1][2]$
* Traverse the given array:
	* If element is non negative assign $hash[ele][0]$ as 1.
	* If element is negative assign $hash[ele][1]$ as 1.

##### Searching
* If element to search say x is non-negative check if $hashp[x][0]$ is 1 or not. If true then present else absent.
* If element to search say x is negative check if $hashp[x][1]$ is 1 or not. If true then present else absent.

