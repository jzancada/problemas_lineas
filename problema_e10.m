%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% problema_e10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
L = 140; % [km]
Z_p = 0.061 + j*0.306; % [omh / km]
Y_p = j*3.685E-6; % [S / km]

Z = Z_p * L;
Y = Y_p * L;

% linea media
A = Z * Y / 2 + 1.0;
B = Z;
C = Y * (Z*Y/4 + 1.0);

fprintf("Z = %.3g |_ %.2f[deg]\n", abs(Z), angle(Z)/pi*180);
fprintf("Y = %.3g |_ %.2f[deg]\n", abs(Y), angle(Y)/pi*180);

fprintf("A = %.3g |_ %.2f[deg]\n", abs(A), angle(A)/pi*180);
fprintf("B = %.3g |_ %.2f[deg]\n", abs(B), angle(B)/pi*180);
fprintf("C = %f |_ %.2f[deg]\n", abs(C), angle(C)/pi*180);

% b)
U_sl = 220E3 ; %[V]
U_s = U_sl / sqrt(3);
U_r = U_s / A;
fprintf("U_r = %.2f [kV] |_ %.2f[deg]\n", abs(U_r)*1E-3, angle(U_r)/pi*180);
% V o = V_i * (1+e)
e = (222.4646 / (U_sl*1E-3) - 1)*100 % tanto por cien

