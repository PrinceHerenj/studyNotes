### Graph Introductions

Graphs $G = (V,E)$ is a structure that comprises of a set of vertices and a set of edges. Vertices are necessary, but edges are not.
* Vertices can be isolated.
* Vertex Representation: V($)
* Two vertices connected by an edge are known as endpoints of that edge.

* Edge Representation: E(Outgoing, Incoming)
* Outgoing edge: Edge leaving a Vertex
* Incoming edge: Edge entering a vertex

#### Types of Graph:
* Empty Graph: Graph with no edges
* Directed Graph: Graph having single directional edges i.e. E(a,b) exists but E(b,a) does not.
* Undirected Graph: Graph having bidirectional edges i.e. E(a,b) => E(b,a) exists

Complete Graph: contains edge between all possible pairs of vertices.
Weighted Graph: Directed graph with edges having weights.

Sparse Graphs: Graphs with less-than half the total number of possible edges.
Dense Graphs: Grapsh with more-than half the total number of possible edges.

#### Representations of Graphs
**Adjacent List Notation**
consists of an array of vertices list, one for each vertex in $V$
for each vertex, the list contains all vertices, connected to it via a directed or undirected edge.

**Adjacent Matrix Notation**
assume the Vertices to be numbered respectively, and then represented in matrix as $V\times V$ 
* Undirected Graph
  ![[Pasted image 20220414095111.png]]
  where (a) is undirected graph (b) adjacent list notation (c) adjacent matrix notation
* Directed Graph
  ![[Pasted image 20220414095227.png]]
  where (a) is directed graph (b) adjacent list notation (c) adjacent matrix notation


[[Breadth First Search]]
[[Depth First Search (includes Digraph)]]
[[Biconnectivity]]
[[Topological Sorting]]