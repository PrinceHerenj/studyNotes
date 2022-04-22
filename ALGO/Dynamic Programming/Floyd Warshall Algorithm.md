Floyd Warshall Algorhtm is for solving the All Pairs Shorted Path problem. The problem is to find shortest distances between every pair of vertices in a given edge weighter directed graph.

#### Algorithm
* Solution matrix initialized as = input matrix.
* One by One pick all vertices as path-through vertices.
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
