%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% problema_e14
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
U = 110E3; % [V]
S_R = 50E6; % [VA]
cos_phi = 0.8; % inductivo
phi = abs(acos(cos_phi)); % positivo
fprintf('phi = %f\n', phi)

A = 0.98 * exp(j*3/180*pi);
D = A;
B = 110 * exp(j*75/180*pi);
C = 0.0005 * exp(j*80/180*pi);

fprintf("A = %.2f |_ %.2f[deg]\n", abs(A), angle(A)/pi*180);

%---
U_R = U/sqrt(3);
I_R_mod = S_R / sqrt(3) / U;
I_R = I_R_mod * exp(-j*phi);
fprintf("I_R = %.2f |_ %.2f[deg]\n", abs(I_R), angle(I_R)/pi*180);

U_S = A*U_R + B*I_R;
fprintf("U_S = %.2f |_ %.2f[deg]\n", abs(U_S), angle(U_S)/pi*180);

I_S = C*U_R + D*I_R;
fprintf("I_S = %.2f |_ %.2f[deg]\n", abs(I_S), angle(I_S)/pi*180);

%eficiencia
P_S = 3*real(U_S * conj(I_S));
fprintf("P_S = %.2f |_ %.2f[deg]\n", abs(P_S), angle(P_S)/pi*180);

P_R = S_R * cos_phi

eta = P_R / P_S 



