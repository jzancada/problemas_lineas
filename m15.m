% t2^2 * ( t2 - k1 ) = k2
clear

p_2 = 0.433
S = 116.2
alpha = 17.8E-6
E = 8200
Q_R = 4398
T = 1391.79

p_1 = 1.106
theta_1 = -15
theta_2 = 20
t_1 = T / S

a = 400

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


% apartado c
f_vano_1 = a^2 * p_2 / (8*S*t2)

fprintf('vano 2 %.2f\n', f_vano_1 * (360/400)^2);
fprintf('vano 3 %.2f\n', f_vano_1 * (330/400)^2);
fprintf('vano 4 %.2f\n', f_vano_1 * (380/400)^2);
fprintf('vano 5 %.2f\n', f_vano_1 * (280/400)^2);

