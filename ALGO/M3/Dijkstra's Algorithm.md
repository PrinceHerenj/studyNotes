#### Algorithm
* Create a sptSet that keeps track of all vertices included in the shortest-path tree, i.e., whose minimum distance from the source is calculated and finalized. Initially set empty
* Assign a distance value to all vertices in the input graph. Initialize all distance values as INFINITE. Source 0
* While sptSet doesn't include all vertices
	* Pick a vertex u which is not there in sptSet and has a minimum distance value
	* Include u in sptSet
	* Update distance value of all adjacent veritces of u. To update the distance values, iterate through all adjacent vertices. For every adjacent vertex v, if the sum of distance value of u (from source) and weight of edge u-v, is less than the distance value of v, then update the distance value of v.

##### Time Complexity
$O(V+(E\ logV))$
$O(n^2)$
