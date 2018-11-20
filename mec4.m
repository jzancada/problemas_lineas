%
% Modelo mec4
clear

S = 547.3 % mm^2 
D = 30.42 % mm
E = 7000 % kg / mm^2 
alpha = 19.3E-6
Q_R = 14869 % kg
P_c = 1.831 % kg / m
a = 400
CS = 3

peso_volumetrico_hielo = 750 % daN / m^3 
p_h = 0.18 * sqrt(D); % daN / m
S_hielo = p_h / (peso_volumetrico_hielo) * 1e6

D_h = 2 * sqrt(S_hielo/pi + (D/2)^2)

p_v_h = 50*(60/120)^2*D_h *1e-3

p_a_h_v = sqrt((P_c + p_h)^2 + p_v_h^2 )

t_1 = Q_R / CS / S

% t2^2 * ( t2 - k1 ) = k2

p_2 = P_c 
p_1 = p_a_h_v

theta_1 = -15
theta_2 = 30

K = t_1 - a^2*p_1^2*E / (24*S^2*t_1^2)
k1 = K - alpha*E*(theta_2 - theta_1) 
k2 = a^2 * p_2^2 * E / (24 * S^2)

% barrido
t2 = 0:.01:10;
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
fprintf('Iter 6 %.2f\n', t2);


% flecha
flecha = p_2 * a * a / (8 * S * t2);
fprintf('flecha %.2f\n', flecha);

%