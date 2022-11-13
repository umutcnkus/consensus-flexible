nAgents = 6;

[A, B, C, D] = get_mass_spring_model();

modelName = 'consensus_model';

open_system((modelName));

agent_handles = [];


for i = 1: nAgents
    agent_block = add_block('simulink/Sinks/Scope',strcat(modelName, '/Agent'), 'MakeNameUnique','on');
end

