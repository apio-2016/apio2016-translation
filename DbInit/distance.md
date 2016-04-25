# Distance

Seoul, the capital of KOREA, is a big city and it has complex networks of roads. Certain locations in the city are connected by roads. Particularly, there is a ring network \\(C\\) connecting locations around the huge city. Also at some locations in \\(C\\), there are branch lines that connect the ring network and the neighboring areas.

The whole network \\(U\\) may considered as a graph, representing locations as vertices and roads as edges. The graph \\(U\\) consists of a cycle \\(C\\) and trees \\(T_1, T_2, ..., T_r\\) attached to \\(C\\) at points \\(w_1, \ldots, w_r\\) in \\(C\\), respectively. The cycle \\(C\\) is an ordered list \\((v_1, v_2, \ldots, v_m)\\), where \\(v_i\\) and \\(v_{i+1}\\) are connected by an edge for each \\( i=1, 2, ..., m-1 \\), and \\( v_m \\) and \\( v_1 \\) are connected by an edge. For a subset \{\\(w_1, w_2, ..., w_r\\)\} \\(\subseteq\\) \{\\(v_1, v_2, ..., v_m\\)\}, each tree \\(T_i\\) is a rooted tree with the root \\(w_i\\). For convenience, the vertices on the cycle \\( C \\) are numbered by \\( 1, 2, ..., m \\) and the other vertices, which are contained in the trees, are numbered by \\( m+1, m+2, ..., n \\), as shown in Fig. 1, where \\( n \\) and \\( m \\) is the number of vertices of \\( U \\) and \\( C \\), respectively. 

<figure>
![Figure 1](/images/distance1.png)
<figcaption><center>Figure 1</center></figcaption>
</figure>

Each edge \\(e=(u, v)\\) with endpoints \\(u\\) and \\(v\\) in \\(U\\) has an integer weight \\( w(u, v) \\) which represents the length of a road. For all vertices numbered \\(i (m+1 \le i \le n)\\), there is a unique vertex numbered \\(j (1 \le j \le i-1)\\) that two locations \\(i\\) and \\(j\\) are connected with an edge. 

A point \\( p \\) on the edge \\( e \\) is located at the distance \\( w(u, p) \\) from \\( u \\) where \\( w(u, p) \\) is an integer and \\( 0 \le w(u, p) \le w(u, v) \\). The distance between two points \\(p\\) and \\(q\\) on \\(U\\) is the length of the shortest path from \\(p\\) to \\(q\\). 

You have to answer the following question: For any point \\(p\\) on \\(U\\), find the furthest vertex from \\(p\\), and compute the shortest distance from \\(p\\). The query point \\(p\\) is represented by the edge \\( (u, v) \\) containing \\(p\\) and the distance \\( w(u, p) \\) from \\( u \\). 

## Input

The first line of input contains integers \\(n\\) and \\(m\\), the numbers of the vertices of the whole network \\(U\\) and the cycle \\(C\\) in \\(U\\), respectively.
The second line has \\( m \\) integers representing the weights of edges in \\(C\\) in which the \\( i \\)-th integer is the weight of the edge \\( (i, i+1) \\) for \\(i = 1, .., m-1\\) and the \\(m\\)-th integer is the weight of the edge \\( (m, 1) \\).
The following \\( n-m \\) lines contain informations of edges \\( (i, j) \\) for \\(i = m+1, m+2, ..., n\\). each line has three integers \\( j \\) and \\( w \\) where \\( j \\) is the parent of \\( i \\) and \\( w \\) is the weight of the edge.
The next line contains an integer \\( Q \\), the number of queries. Each of the following \\( Q \\) lines has three integers \\( x \\), \\( y \\) and \\( z \\) representing the query point \\( p \\) on an edge \\( (x, y) \\) where \\( z \\) is the distance of \\( p \\) from \\( x \\), that is, \\( z = w(x, p ) \\).   
The weight of all edges are same or smaller than 1,000.

## Output
 
For each query, the output consists of a single line. The line contains an integer, the largest distance from the query point. 

## Example

|   Input       |  Output      |
|-------------------------------|
| 13 5<br/> 1 2 8 3 2<br/> 1 5 <br/> 1 5<br/> 6 2<br/> 6 1 <br/> 7 4 <br/> 3 4 <br/> 3 5 <br/> 4 3 <br/> 3 <br/> 1 7 0 <br/> 1 7 2 <br/> 1 2 1 | 9 <br/> 10 <br/> 10|


## Scoring

**Subtask 1 (15 points):** \\( 3 \le m \le n \le 1,000 \\) and \\( 1 \le Q \le 1,000 \\).

**Subtask 2 (20 points):** \\(m = 3 \\), \\( 3 \le n \le 100,000 \\) and \\( 1 \le Q \le 100,000 \\).

**Subtask 3 (25 points):** \\(n = m \\), \\( 3 \le n \le 100,000 \\) and \\( 1 \le Q \le 100,000 \\).

**Subtask 4 (40 points):** \\( 3 \le m \le n \le 100,000 \\) and \\( 1 \le Q \le 100,000 \\). 


