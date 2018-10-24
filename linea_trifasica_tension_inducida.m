clear

I_a = 500 
I_b = 500 * exp(j*(-120)/180*pi)
I_c = 500 * exp(j*( 120)/180*pi)

% d sin corriente - corriente
%
% a o   o a
% b o   o b
% c o   o c
%
da_a = 2
da_b = sqrt(2^2 + 2^2)
da_c = sqrt(2^2 + 4^2)

db_a = sqrt(2^2 + 2^2)
db_b = 2
db_c = sqrt(2^2 + 2^2)

dc_a = sqrt(2^2 + 4^2)
dc_b = sqrt(2^2 + 2^2)
dc_c = 2

lambda_a = 2E-7 * (I_a * log (1/da_a) + I_b * log (1/da_b) + I_c * log (1/da_c))
lambda_b = 2E-7 * (I_a * log (1/db_a) + I_b * log (1/db_b) + I_c * log (1/db_c))
lambda_c = 2E-7 * (I_a * log (1/dc_a) + I_b * log (1/dc_b) + I_c * log (1/dc_c))

u_a = j*2*pi*50*lambda_a * 30E3
u_b = j*2*pi*50*lambda_b * 30E3
u_c = j*2*pi*50*lambda_c * 30E3

fprintf("u_a = %.2f |_ %.2f[deg]\n", abs(u_a), angle(u_a)/pi*180);
fprintf("u_b = %.2f |_ %.2f[deg]\n", abs(u_b), angle(u_b)/pi*180);
fprintf("u_c = %.2f |_ %.2f[deg]\n", abs(u_c), angle(u_c)/pi*180);

% tramo I (10 km a - b - c)
u_a_I = j*2*pi*50*lambda_a * 10E3
u_b_I = j*2*pi*50*lambda_b * 10E3
u_c_I = j*2*pi*50*lambda_c * 10E3

% tramo II (10 km a - b - c)
% a o   o c
% b o   o a
% c o   o b
%
da_c = 2
da_a = sqrt(2^2 + 2^2)
da_b = sqrt(2^2 + 4^2)

db_c = sqrt(2^2 + 2^2)
db_a = 2
db_b = sqrt(2^2 + 2^2)

dc_c = sqrt(2^2 + 4^2)
dc_a = sqrt(2^2 + 2^2)
dc_b = 2

lambda_a = 2E-7 * (I_a * log (1/da_a) + I_b * log (1/da_b) + I_c * log (1/da_c))
lambda_b = 2E-7 * (I_a * log (1/db_a) + I_b * log (1/db_b) + I_c * log (1/db_c))
lambda_c = 2E-7 * (I_a * log (1/dc_a) + I_b * log (1/dc_b) + I_c * log (1/dc_c))

u_a_II = j*2*pi*50*lambda_a * 10E3
u_b_II = j*2*pi*50*lambda_b * 10E3
u_c_II = j*2*pi*50*lambda_c * 10E3

% tramo III (10 km a - b - c)
% a o   o b
% b o   o c
% c o   o a
%
da_b = 2
da_c = sqrt(2^2 + 2^2)
da_a = sqrt(2^2 + 4^2)

db_b = sqrt(2^2 + 2^2)
db_c = 2
db_a = sqrt(2^2 + 2^2)

dc_b = sqrt(2^2 + 4^2)
dc_c = sqrt(2^2 + 2^2)
dc_a = 2

lambda_a = 2E-7 * (I_a * log (1/da_a) + I_b * log (1/da_b) + I_c * log (1/da_c))
lambda_b = 2E-7 * (I_a * log (1/db_a) + I_b * log (1/db_b) + I_c * log (1/db_c))
lambda_c = 2E-7 * (I_a * log (1/dc_a) + I_b * log (1/dc_b) + I_c * log (1/dc_c))

u_a_III = j*2*pi*50*lambda_a * 10E3
u_b_III = j*2*pi*50*lambda_b * 10E3
u_c_III = j*2*pi*50*lambda_c * 10E3


fprintf("u_a_I   = %.2f |_ %.2f[deg]\n", abs(u_a_I), angle(u_a_I)/pi*180);
fprintf("u_b_I   = %.2f |_ %.2f[deg]\n", abs(u_b_I), angle(u_b_I)/pi*180);
fprintf("u_c_I   = %.2f |_ %.2f[deg]\n", abs(u_c_I), angle(u_c_I)/pi*180);

fprintf("u_a_II  = %.2f |_ %.2f[deg]\n", abs(u_a_II), angle(u_a_II)/pi*180);
fprintf("u_b_II  = %.2f |_ %.2f[deg]\n", abs(u_b_II), angle(u_b_II)/pi*180);
fprintf("u_c_II  = %.2f |_ %.2f[deg]\n", abs(u_c_II), angle(u_c_II)/pi*180);

fprintf("u_a_III = %.2f |_ %.2f[deg]\n", abs(u_a_III), angle(u_a_III)/pi*180);
fprintf("u_b_III = %.2f |_ %.2f[deg]\n", abs(u_b_III), angle(u_b_III)/pi*180);
fprintf("u_c_III = %.2f |_ %.2f[deg]\n", abs(u_c_III), angle(u_c_III)/pi*180);

u_a_t = u_a_I + u_a_II + u_a_III;
u_b_t = u_b_I + u_b_II + u_b_III;
u_c_t = u_c_I + u_c_II + u_c_III;

fprintf("u_a_t = %.2f |_ %.2f[deg]\n", abs(u_a_t), angle(u_a_t)/pi*180);
fprintf("u_b_t = %.2f |_ %.2f[deg]\n", abs(u_b_t), angle(u_b_t)/pi*180);
fprintf("u_c_t = %.2f |_ %.2f[deg]\n", abs(u_c_t), angle(u_c_t)/pi*180);
