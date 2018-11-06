%
% Modelo 1
clear

S = 546.02 % mm^2 
D = 30.378 % mm
E = 6860 % kg / mm^2 
alpha = 19.35E-6
Q_R = 15536 % kg
P_c = 1.826 % kg / m
a = 600
b = 20
CS = 3.5

% a
p_v = 50*(D*1E-3)
p_a = sqrt(P_c^2 + p_v^2)
T_B = Q_R / CS
T_m = 1/4*(2*T_B - p_a * b + sqrt( (p_a * b - 2*T_B)^2 - 2*p_a^2 * a^2 ))

t_m = T_m / S

a_prima = sqrt(a^2 + b^2)
t = a/a_prima * t_m


% b
% t2^2 * ( t2 - k1 ) = k2

p_2 = P_c

p_1 = p_a
theta_1 = -5
theta_2 = 15

t_1 = t

K = t_1 - a^2*p_1^2*E / (24*S^2*t_1^2)
k1 = K - alpha*E*(theta_2 - theta_1) 
k2 = a^2 * p_2^2 * E / (24 * S^2)

% barrido
t2 = 0:.01:7
y = t2.^2 .* ( t2 - k1) - k2
plot(t2, y, '.-')
grid on
% ylim([-10 10])

t2 = 10
fprintf('Iter 0 %f\n', t2);

t2 = sqrt(k2 / ( t2 - k1 ));
fprintf('Iter 1 %f\n', t2);

t2 = sqrt(k2 / ( t2 - k1 ));
fprintf('Iter 2 %f\n', t2);

t2 = sqrt(k2 / ( t2 - k1 ));
fprintf('Iter 3 %f\n', t2);

t2 = sqrt(k2 / ( t2 - k1 ));
fprintf('Iter 4 %f\n', t2);

t2 = sqrt(k2 / ( t2 - k1 ));
fprintf('Iter 5 %f\n', t2);

t2 = sqrt(k2 / ( t2 - k1 ));
fprintf('Iter 6 %f\n', t2);


% flecha
flecha = p_2 * a * a_prima / (8 * S * t2)

% apartado c
f_vano_1 = a^2 * p_2 / (8*S*t2)

fprintf('vano 2 %.2f\n', f_vano_1 * (360/400)^2);
fprintf('vano 3 %.2f\n', f_vano_1 * (330/400)^2);
fprintf('vano 4 %.2f\n', f_vano_1 * (380/400)^2);
fprintf('vano 5 %.2f\n', f_vano_1 * (280/400)^2);

