#### Problem
Given a set of cities and distance between every pair of cities, the problem is to find the shortest possible route that visits every city exactly once and returns to the starting point.

$g(1,\{2,3,4\})=min\{C_{1k}+g(k,\{2,3,4\}-\{k\})\}$

Following Tabulation method of DP

* Create Tree structure
* Find out cost of returning back to 1 from end nodes, i.e.
  $g(i, \phi)$ where $i \in\{2,3,4\}...eq(i)$
	  $g(2,\phi)=5$
	  $g(3,\phi)=6$
	  $g(4,\phi)=8$
  
* Find cost to end nodes
  $g(i,\{j\}-\{i\})+eq(i)$ where $S=\{2,3,4\}\ i\in S,\ j\in S$
	  $g(2,\{3\})=9+6=15$
	  $g(2,\{4\})=10+8=18$
	  $g(3,\{2\})=13+5=18$
	  $g(3,\{4\})=12+8=20$
	  $g(4,\{2\})=8+5=13$
	  $g(4,\{3\})=9+6=15$
  
* Find upper level nodes
  $g(i,\{S\}-\{i\})$ where $S=\{2,3,4\}\ i\in S$
	  $g(2,\{3,4\})=min(g(3,\{4\}),g(4,\{3\}))=25$
	  $g(3,\{2,4\})=min(g(2,\{4\}),g(4,\{2\}))=25$
	  $g(4,\{2,3\})=min(g(2,\{3\}),g(3,\{2\}))=23$
  
* Find parent node
  $g(1,{S})=min(g(1,j)+g(j,\{S\}-\{j\}))\  j\in S$
	  $g(1,\{2,3,4\})=min((10+g(2,\{3,4\}),(15+g(3,\{2,4\}),(20+g(4,\{2,3\}))$
	  = $min(35,40,43)=35$

which is the answer.
  