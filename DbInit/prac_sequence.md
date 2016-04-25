# Sequence

Adam wrote down a sequence of \\(K\\) consecutive positive integers starting with \\(N\\) on a blackboard. When he left, Billy came in and erased all but one digit from each number, thus creating a sequence of \\(K\\) digits.


## Task
Given the final sequence left on the blackboard, find the smallest value of \\(N\\) with which the initial sequence might have started.


## Input

The first line of the input contains a single integer \\(K\\) -- the length of the sequence. The second line contains \\(K\\) integers \\(B_1\\), \\(B_2\\), \\(\dots\\), \\(B_K\\) --- Billy's sequence (\\(0 \le B_i \le 9\\)), in the order in which it is written on the blackboard.


## Output

The output should consist of a single line with the smallest value of \\(N\\) with which the initial sequence might have started.


## Example

|  Input  |  Output  |  Comments  |
|------------------------------|
| 6<br/>7 8 9 5 1 2 | 47 | \\(N = 47\\) would correspond to Adam's se-<br/>quence being \\(47\ 48\ 49\ 50\ 51\ 52\\) from which<br/>Billy's sequence can indeed be obtained. As<br/>no smaller value of \\(N\\) would work, the an-<br/>swer is 47. |


## Scoring

**Subtask 1 (9 points):** \\(1 \le K \le 1000\\), correct answer does not exceed \\(1000\\).

**Subtask 2 (33 points):** \\(1 \le K \le 1000\\).

**Subtask 3 (25 points):** \\(1 \le K \le 100\,000\\), all elements of the given sequence are equal.

**Subtask 4 (33 points):** \\(1 \le K \le 100\,000\\).


## Constraints

**Time limit:** 1 s.

**Memory limit:** 256 MB.
