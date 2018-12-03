%
% Modelo mec1
clear

%% datos
% S: seccion conductor
% D: diametro conductor
% E: módulo elasticidad
% Q_R: carga de rotura
% a: vano regulador
% CS: coeficiente seguridad
%
S = 454.5 % mm^2 
D = 27.72 % mm
E = 7000 % kg / mm^2 
alpha = 19.3E-6
Q_R = 12426 % kg
P_c = 1.5209 % kg / m
a = 250
CS = 3

peso_volumetrico_hielo = 750 % daN / m^3 

%% Sobrecarga del hielo
p_h = 0.18 * sqrt(D); % daN / m
S_hielo = p_h / (peso_volumetrico_hielo) * 1e6

D_h = 2 * sqrt(S_hielo/pi + (D/2)^2)

% sobrecarga viento hielo
p_v_h = 50*(60/120)^2*D_h *1e-3

% peso aparente de traccion maxima (hielo + viento)
p_a_h_v = sqrt((P_c + p_h)^2 + p_v_h^2 )

% traccion horizontal maxima
t_1 = Q_R / CS / S

%% Ecuacion de cambio de condiciones
% t2^2 * ( t2 - k1 ) = k2

% Hipotesis flecha maxima por hielo
p_2 = P_c + p_h
p_1 = p_a_h_v

theta_1 = -15
theta_2 = 0

t2Ini = 8.2; % seleccion valor inicial de t2 para iterar
[t2, K] = find_t2(t2Ini, theta_1, theta_2, t_1, a, p_1, p_2, S, alpha, E);
fprintf('K : %.3f\n', K);
fprintf('t2: %.3f\n', t2);

% flecha
flecha = p_2 * a * a / (8 * S * t2);
fprintf('flecha %.2f\n', flecha);

%