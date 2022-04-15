Given Graph $G=(V,E)$ and a source vertex $S$,
Breadth First Search intends to 
* systematically explore all edges of G, exploring all single edges at a time.
* calculates distance from source to each reachable vertex.
* produces Breadth First Tree.


**Algorithm:**
```
1. select source
2. queue source
3. from queue
	* explore all adjacent vertices and mark visited
	* enqueue all visited
	* dequeue from the queue
4. repeat step 3 until all visited.
```

**Time Complexity**
Enqueue and Dequeue take $O(V)$
Going through Lists $O(E)$
therefore total = $O(V+E)$

if $E(u,v)$ exists and $u$ is recheable from $S$, then $v$ is also recheable from $S$
to calculate distance to destination, we just keep adding number-of-nodes visited till reaching destination from source.

**Breadth First Tree**
Tree Structure Created when visiting vertices from source and so onward

**Working of BFS**
	![[Pasted image 20220414110402.png]]

**C# implementation** (not required)
```cs
using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

  

class Graph {

    private int _V; // vertices in graph

    LinkedList<int>[] _adj; // adjacency list

  

    public Graph(int V) {

        _adj = new LinkedList<int>[V];

        for(int i = 0; i < _adj.Length; i++) {

            _adj[i] = new LinkedList<int>();

        }

        _V = V;

    } // constructor

  

    public void AddEdge(int u, int v) {

        _adj[u-1].AddLast(v-1);

    } // adding an edge

  

    public void BFS(int s) {

        bool[] visited = new bool[_V];

        for(int i = 0; i < _V; i++) {

            visited[i] = false;

        }

        LinkedList<int> queue = new LinkedList<int>();

  

        visited[s] = true;

        queue.AddLast(s);

  

        while(queue.Any()) {

            s = queue.First();

            Console.Write(s+1 + " ");

            queue.RemoveFirst();

  

            LinkedList<int> list = _adj[s];

  

            foreach (var val in list) {

                if(!visited[val]) {

                    visited[val] = true;

                    queue.AddLast(val);

                }

            }

        }

    }

  

    static void Main(string[] args) {

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

        g.BFS(0);

    }

  

}
```