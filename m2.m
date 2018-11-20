%
% Modelo 1
clear

S = 281.1 % mm^2 
D = 21.793 % mm
E = 7730 % kg / mm^2 
alpha = 19E-6
Q_R = 8817.8 % kg
P_c = 0.974 % kg / m
a = 300

ph = 0.36 * sqrt(D)
pa = P_c + ph
T1 = Q_R / 3
t_1 = T1 / S

%& b
p_1 = pa
theta_1 = -20
theta_2 = 50
p_2 = P_c

K = t_1 - a^2*p_1^2*E / (24*S^2*t_1^2)
k1 = K - alpha*E*(theta_2 - theta_1) 
k2 = a^2 * p_2^2 * E / (24 * S^2)

% barrido
t2 = 0:.01:7;
y = t2.^2 .* ( t2 - k1) - k2;
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
flecha = p_2 * a * a / (8 * S * t2)

CS = Q_R / (S*t2)

