%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% problema_e9
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% l - longitud
% Z - impedancia serie
% Y - admitancia paralelo
%
% Datos
l = 500; % [km]
Z = .1 + j*0.5145; % [ohm]
Y = j*3.1734E-6; % [S]

%% Impedancia Caracteristica
Z_c = sqrt(Z*l / (Y*l))

fprintf("Z_c = %.2f |_ %.2f[deg]\n", abs(Z_c), angle(Z_c)/pi*180);

% constante de propagacion
gamma = sqrt(Z*Y)
gamma_l = gamma*l;
fprintf("gamma_l = %.2f |_ %.2f[deg]\n", abs(gamma_l), angle(gamma_l)/pi*180);

%% Parametros cuadripolo
A = cosh(gamma_l);
D = A ;
B = Z_c * sinh(gamma_l); 
C = 1/Z_c * sinh(gamma_l);
fprintf("A = %.2f |_ %.2f[deg]\n", abs(A), angle(A)/pi*180);
fprintf("B = %.2f |_ %.2f[deg]\n", abs(B), angle(B)/pi*180);
fprintf("C = %.2g |_ %.2f[deg]\n", abs(C), angle(C)/pi*180);
