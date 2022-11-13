function [e_1, e_2, e_3, e_4] = ceren_function(states)

    adj = [ 0	0	0	0
            1   0   1   0
            1   0   0   1
            1   1   0   0]
    
    pinnings = [1; 0; 0; 0];

    A = adj;
    G = pinnings;
    
    size_agents = 4;
    size_states = 1;
    
    error = zeros(size_states, size_agents);
    
    
    for i = 1 : size_agents
        error_temp = zeros(1,1);
        for j = 1 : size_agents
            term1 = (states(j+1) - states(i+1));
            error_temp = error_temp + A(i, j) * term1;
        end
        term2 = (states(1) - states(i+1 : (i+1)));
        error_temp = error_temp + pinnings(i) * term2;
        error(:,i) = error_temp;
    end
    
    e_1 = error(:,1);
    e_2 = error(:,2);
    e_3 = error(:,3);
    e_4 = error(:,4);


end 