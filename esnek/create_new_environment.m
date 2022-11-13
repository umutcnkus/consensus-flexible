nAgent = 6;

[A, B, C, D] = get_mass_spring_model();

modelName = 'consensus_model';

open_system(new_system((modelName)));

subsytem_handles = [];



for i = 1: nAgent
    Simulink.BlockDiagram.createSubsystem('Agent', 'MakeNameUnique', 'on');
end

