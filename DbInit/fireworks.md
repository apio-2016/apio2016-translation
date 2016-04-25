# Fireworks

Fireworks display is one of the most exciting events in a festival. It is important in a fireworks display that every explosive connected to a switch by fuses explodes simultaneously at a planned time. Since the explosives used in the fireworks are very dangerous, they are set up far apart from the switch and are connected to the switch by some number of fuses. To connect several explosions to the switch fuses are connected as if edges are connected in a tree as shown in [Figure 1]. The spark starts from the switch, and moves along the fuses. When a spark reaches a branch, the spark spreads to all the fuses connected to the branch. The speed at which the sparks move is constant. [Figure 1] shows how six explosives {\\(E_1,E_2,…,E_6 \\)} are connected and how long each fuse is. Also it shows the explosion time assuming that the starting time of a spark at the switch is \\(0\\).
<br>

<figure>
![Figure 1](/images/fireworks1.png)

<figcaption><center>[Figure 1] Connection Layout</center></figcaption>
</figure>

<br>

Hyunmin, who participated in the fireworks display, made a connection layout. Unfortunately, in his layout, the explosives may not explode at the same time. We want to have all explosives explode at the same time by changing the lengths of some fuses. For example, to have all the explosives in [Figure 1] explode at time \\(13\\) lengths of fuses can be adjusted as shown in the left figure in [Figure 2]. Similarly, to have all the explosives in [Figure 1] explode at time 14 lengths of fuses can be adjusted as shown in the right figure in [Figure 2].

<br>

<figure>
![Figure 2](/images/fireworks2.png)

<figcaption><center>[Figure 2] Examples of fuse length changes that lead to simultaneous explosions</center></figcaption>
</figure>

<br>

The cost of changing the length of a fuse is equal to the absolute value of difference in fuse length. For example, if the layout shown in [Figure 1] changes to the layout on the left in [Figure 2], the total cost is \\(6\\). If the layout shown in [Figure 1] changes to the layout on the right in [Figure 2] the total cost is \\(5\\). 

The length of a fuse can be fully reduced to \\(0\\), retaining the connectivity among branches.

Given a connection layout, you are to make a program which adjusts the fuse lengths so that all the explosives explode at the same time with minimum cost.

## Input

All input values are positive integers. Let \\(N\\) denote the number of branches, \\(M\\) the number of explosives. Every branch is identified by a number from \\(1\\) to \\(N\\). The branch numbered \\(1\\) is where the switch is located. Every explosive is identified by a number from \\(N+1\\) to \\(N+M\\).

The input is given as follows:
\\(N\\) \\(M\\)
\\(P_2\\)  \\(C_2\\)
\\(P_3\\)  \\(C_3\\)
\\(…\\)
\\(P_N\\)  \\(C_N\\)
\\(P_{N+1}\\)  \\(C_{N+1}\\)
\\(…\\)
\\(P_{N+M}\\)  \\(C_{N+M}\\)

\\(P_i\\), \\(1 \le P_i < i\\), identifies the branch which is connected to either branch or explosive numbered \\(i\\). \\(C_i\\) denotes the length of the fuse used to connect them (\\(1 \le C_i \le 10^9\\)). The number of fuses connected to a branch except the switch is more than \\(1\\) and that of fuses connected to a explosive is exactly \\(1\\).

## Output

Print the minimum cost to adjust the lengths of fuses to have all the explosives explode at the same time.

## Example

|  Input           |        Output   |
|------------------------------------|
| 4 6<br/>1 5<br/>2 5<br/>2 8<br/>3 3<br/>3 2<br/>3 3<br/>2 9<br/>4 4<br/>4 3 | 5  |


## Scoring

**Subtask 1 (7 points):** \\(N = 1\\), \\(1 \le M \le 100\\).

**Subtask 2 (19 points):** \\(1 \le N+M \le 300\\) and the longest distance between the ignition switch to an explosive is less than or equal to 300.

**Subtask 3 (29 points):** \\(1 \le N+M \le 5,000\\).

**Subtask 4 (45 points):** \\(1 \le N+M \le 300,000\\).



