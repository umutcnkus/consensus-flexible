function [A, B, C, D] = get_mass_spring_model()

    k1 = 1.5;
    k2 = 1;

    m1 = 1.1;
    m2 = 0.9;

    A = [0 1 0 0; (-k1-k2)/m1 0 k2/m1 0; 0 0 0 1; k2/m2 0 -k2/m2 0];
    B = [0; 1/m1; 0; 0];
    C = [1 0 0 0; 0 0 1 0];
    D = [0; 0; 0;0];

end


