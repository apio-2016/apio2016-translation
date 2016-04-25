# Boat

In the city of Seoul, a river called the Han River flows in the east-west direction. On the northern shore of the river there are \\(N\\) boating schools numbered from \\(1\\) to \\(N\\) as you move from the western end to the eastern end of the shore. All boats from the same school have the exact same color and thus are indistinguishable. The boats from different schools always have different colors and thus are always distinguishable. The school numbered \\(i\\) may choose to not send any boats to the festival. If it chooses to send boats to the festival it may send any number of boats from \\(a_i\\) to \\(b_i\\), inclusive. (\\(a_i \le b_i\\))

One key condition is that the number of boats sent by the school numbered \\(i\\), if it has chosen to send any boats, should be *larger than* the number of boats sent by any school numbered less than \\(i\\), if any such school have chosen to send boats.

## Task

Given \\(a_i\\)'s and \\(b_i\\)'s for all schools, find the number of all possible ways the schools may send boats to the festival, under the condition that at least one school chooses to send boats.

## Input

The first line of the input contains a single integer \\(N\\) -- the number of schools. The \\(i\\)'th of the next \\(N\\) lines contains two integers \\(a_i\\) and \\(b_i\\). (\\(1 \le a_i \le b_i \le 10^9\\))

## Output

The output should consist of a single line with the remainder when the number of all possible cases the schools may send boats to the festival is divided by \\(1,000,000,007\\).

## Example

|  Input  |  Output  |  Comments  |
|------------------------------|
| 2<br/>1 2<br/>2 3 | 7<br/> <br/> <br/> | There are 4 ways where only one school sends boats<br/>and 3 ways where both schools send boats and thus<br/>the answer is 7. |


## Scoring

**Subtask 1 (9 points):** \\(1 \le N \le 500\\) and for all \\(1 \le i \le N\\), \\(a_i = b_i\\).

**Subtask 2 (22 points):** \\(1 \le N \le 500\\) and \\(\sum_{1 \le i \le N}(b_i-a_i) \le 10^6\\).

**Subtask 3 (27 points):** \\(1 \le N \le 100\\).

**Subtask 4 (42 points):** \\(1 \le N \le 500\\).

