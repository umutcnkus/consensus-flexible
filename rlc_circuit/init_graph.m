    adj = [ 0	0	0	0
            1   0   0   0
            0   1   0   0
            0   0   1   0];     
pinnings = [1; 0; 0; 0];

graph = digraph(adj);

laplacian = diag(outdegree(graph)) - adj;

Q = eye(2)*100;
R_m = 10;
c = 200;

[~, K, ~] = icare(A,B,Q,R_m);

[~, F1, ~] = icare(A',C1',Q,R_m);
[~, F2, ~] = icare(A',C2',Q,R_m);
[~, F3, ~] = icare(A',C3',Q,R_m);
[~, F4, ~] = icare(A',C4',Q,R_m);

F1 = F1';
F2 = F2';
F3 = F3';
F4 = F4';


[~, F, ~] = icare(A',C',Q,R_m);
F = F';
