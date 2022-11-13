    adj = [ 0	1	1	1
            0   0   1   0
            1   0   0   0
            0   0   0   0]';

pinnings = [1; 0; 0; 0; 0; 0];

graph = digraph(adj);

laplacian = diag(indegree(graph)) - adj';

Q = eye(6)*10;
R = 5;


[~, K, ~] = icare(A,B,Q,R);

[~, F1, ~] = icare(A',C1',Q,R);
[~, F2, ~] = icare(A',C2',Q,R);
[~, F3, ~] = icare(A',C3',Q,R);
[~, F4, ~] = icare(A',C4',Q,R);

F1 = -F1';
F2 = -F2';
F3 = -F3';
F4 = -F4';


c = 1;
F = F';
