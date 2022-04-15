Given Graph $G=(V,E)$ and a source vertex $S$,
Depth First Search intends to 
* Explore Edges out of the most recently discovered vertex until no more edges exist.
* Once above condition met, backtrack to the last branching of the graph.
* Repeat above till all explored.
* produces Depth First Tree.

**Algorithm:**
```
1. Select Source
2. Queue source
3. From queue
	* explore sub vertices of vertex until no more sub-vertices, keep marking visited.
	* enqueue all visited
	* dequeue from queue
	* backtrack to last branching in queue.
4. repeat step 3 until all visited.
```

**Time Complexity**
The total running time of DFS is $O(V+E)$

**Classification of Edges**
DFS can be used to classify the edges of input Graph.
* **Tree Edge**: $E(u,v)$ is tree edge, if $v$ was primarily discovered by exploration of $E$
* **Back Edges**: $E(u,v)$ is back edge if $v$ is already discovered and ancestor of $u$.
* **Forward Edges**: $E(u,v)$ is forward edge if $v$ was not discovered first via $E$, but still is an ancestor
* **Cross Edges**: connecting two DFS
	![[Pasted image 20220414113132.png]]
	here $E(u,v)$, $E(v,y)$ and $E(y,x)$ are Tree edges
	$E(x,v)$ is back edge
	$E(u,x)$ is forward edge.

**Working of DFS**
![[Pasted image 20220414113336.png]]
where (a) has two DFS (b) is DFS trre representation.
==the numbers in the ovals are the order in which we go about exploring and backtracking.== i.e. start from 1->2... ->15
are **called Finishing Times**.

**C# Implementation** (not required)
```cs
using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

  

class Graph {

    private int _V;

    private LinkedList<int>[] _adj;

  

    public Graph(int V) {

        _adj = new LinkedList<int>[V];

        for(int i = 0; i<_adj.Length; i++) {

            _adj[i] = new LinkedList<int>();

        }

        _V = V;

    }

  

    public void AddEdge(int u, int v) {

        _adj[u-1].AddLast(v-1);

    }

  

    public void DFSUtil(int v, bool[] visited) {

        visited[v] = true;

        Console.Write(v + " ");

  

        LinkedList<int> vList = _adj[v];

        foreach(var val in vList) {

            if(!visited[val])

                DFSUtil(val, visited);

        }

    }

  

    public void DFS(int s) {

        bool[] visited = new bool[_V];

        DFSUtil(s, visited);

    }

  

    public static void Main(string[] args) {

        Graph g = new Graph(6);

  

        g.AddEdge(1,2);

        g.AddEdge(1,3);

        g.AddEdge(2,4);

        g.AddEdge(2,5);

        g.AddEdge(3,5);

        g.AddEdge(4,5);

        g.AddEdge(4,6);

        g.AddEdge(5,6);

  

        Console.Write("BFS Traversal source =  1\n");

        g.DFS(0);

    }

}
```