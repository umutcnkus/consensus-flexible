adj = [ 0	2	0	0	0	0
0	0	6	0	0	0
0	0	0	1	0	0
0	0	0	0	1	0
0	0	0	0	0	3
0	0	0	0	0	0];


pinnings = [1; 0; 0; 0; 0; 0];

graph = digraph(adj);

laplacian = diag(indegree(graph)) - adj;

Q = [10 0 0 0; 0 10 0 0; 0 0 10 0; 0 0 0 10];
R = [5];


[~, K, ~] = icare(A,B,Q,R);

[~, F, ~] = icare(A',C',Q,R);

F = F';
c = 1;