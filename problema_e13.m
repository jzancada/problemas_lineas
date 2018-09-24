%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% problema_e13
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% L - longitud
% Z - impedancia serie
% Y - admitancia paralelo
%
L = 16; % [km]
P_carga = 1000E3; % [W]
cos_phi = 0.8; % inductivo
phi = abs(acos(cos_phi)); % positivo
fprintf('phi = %f\n', phi)
U = 11E3; %[V]
Z_p = 0.03 + j*0.22; % [ohm/km]

% 
Z = Z_p * L;
A = 1
B = Z;
C = 0
D = 1

U_R = U / sqrt(3);
I_R_mod = P_carga / sqrt(3) / U / cos_phi
I_R = I_R_mod * exp(-j*phi);
fprintf("I_R = %.2f |_ %.2f[deg]\n", abs(I_R), angle(I_R)/pi*180);

U_S = A * U_R + B * I_R
fprintf("U_S = %.2f |_ %.2f[deg]\n", abs(U_S), angle(U_S)/pi*180);

% caida tension
DeltaU_abs = (abs(U_S) - abs(U_R))/ abs(U_S)* 100

%eficiencia
eta = P_carga / (P_carga + 3*real(Z) * I_R_mod^2)







