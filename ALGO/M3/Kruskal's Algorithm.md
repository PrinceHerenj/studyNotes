#### Algorithm
* Sort all edges in non-decreasing order of their weight
* Pick the smallest edge. Check if it forms a cycle with thus-far formed spanning tree. If no cycle, add, otherwise discard.
* Repeat Step 2 until no more edges.

**Time Complexity**: $O(E\ log\ V)$
