#### Algorithm
* Create Set for tracking set of vertices already in MST.
* Assign key values INFINITE to vertices, source as 0
* while set doesn't include all vertices
	* pick a vertex u which is no thtere in mstSet and has minimum key value.
	* include u to mstSet
	* Update key value of all adjacent vertices of _u_. To update the key values, iterate through all adjacent vertices. For every adjacent vertex _v_, if weight of edge _u-v_ is less than the previous key value of _v_, update the key value as weight of _u-v_.

**Time Complexity**: 
Adjacency Matrix: $O(V^2)$
Adjacency List: $O(E\ log\ V)$
