Topological Sorting of a directed acyclid graph $G=(V,E)$ is a **linear ordering** of all vertices such that $G$ contains $E(u,v)$ in which $u$ **SHOULD** appear before $v$.

**Algorithm**
```
* Call DFS to calculate finishing times for each vertex v
* as each vertes finished insert in front of linked list
* return the linked list of vertices.
```

**Example**
![[Pasted image 20220414120047.png]]
where (a) is DFS of undirected graph of order of putting on clothes.
(b) is Topologically sorted DFS of Graph