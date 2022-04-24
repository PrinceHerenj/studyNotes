Floyd Warshall Algorhtm is for solving the All Pairs Shortest Path problem. The problem is to find shortest distances between every pair of vertices in a given edge weighter directed graph.

##### Common Formula for generating Matrices
Given adjacency matrix $A^0$
$A^k [i,j] = min\{A^{k-1} [i,j],A^{k-1} [i,k]+A^{k-1} [k,j]\}$
where k is the passing through vertex

#### Algorithm
* Solution matrix initialized as = input matrix. (adjacency matrix)
* If no direct edge then distance is INFINITY
* One by One pick all vertices as path-through vertices.
	* Create separate matrices for passing through each vertex.
	* For Vertex say 1, dont change row and column values and left diagonal
	* Then update shortest paths
		* for example, separate matrix for passing through vertex 1, going 2->4
		* ![[Pasted image 20220424203939.png]]
* Update shortest paths

$\large dist[i][j]$ same if k not intermediate vertex
$\large dist[i][j] = dist[i][k]+dist[k][j]$ if RHS smaller than $\large dist[i][j]$

```cs
using System;

class floydWar {
    readonly static int INF = 99999;
    private int V;
    private int[,] graph;
    floydWar(int[,] graph, int V) {
        this.V = V;
        this.graph = graph;
    }
    void floydWarshall() {
        int[,] dist = new int[ V,V];
        int i, j, k;
        for (i = 0; i < V; i++) {
            for (j = 0; j < V; j++) {
                dist[i,j] = graph[i,j];
            }
        }
        for (k = 0; k < V; k++) {
            for (i = 0; i < V; i++) {
                for (j = 0; j < V; j++) {
                    if ((dist[i,k] + dist[k,j]) < dist[i,j]) {
                        dist[i,j] = dist[i,k] + dist[k,j];
                    }
                }
            }
        }
        printSol(dist);
    }

    void printSol(int[,] dist) {
        for (int i = 0; i < V; i++) {
            for (int j = 0; j < V; j++) {
                if (dist[i,j] == INF) Console.Write("INF ");
                else Console.Write(dist[i,j]+" ");
            }
            System.Console.WriteLine();
        }
    }

    public static void Main(string[] args) {
        int[,] graph = {{0,3,INF,7},{8,0,2,INF},{5,INF,0,1},{2,INF,INF,0}};
                        
        floydWar obj = new floydWar(graph, graph.GetLength(0));
        obj.floydWarshall();
    }
}
```

##### Time Complexity
$O(n^3)$

Dijkstra's algorithm for all pairs shortest path = $O(n^2*n)=O(n^3)$
