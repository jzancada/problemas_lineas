function [t2, K] = find_t2(t2Ini, theta_1, theta_2, t_1, a, p_1, p_2, S, alpha, E)
%% Ecuacion de cambio de condiciones
% t2^2 * ( t2 - k1 ) = k2
% entradas:
%   t2Ini: Valor inicial t2 busqueda solucion 
%   theta_1, theta_2: Temperaturas estados 1 y 2
%   t_1: tension estado 1
%   a: vano ideal de regulacion
%   p_1, p_2: pesos estados 1 y 2
%   S: Seccion conductor
%   alpha, E: coef. dilatacion lineal con la T. y módulo elasticidad
% salidas
%   t2: tension estado 2
%   K:

% flag: 1 - plot barrido
flag_debug = 0;

K = t_1 - a^2*p_1^2*E / (24*S^2*t_1^2)
k1 = K - alpha*E*(theta_2 - theta_1)
k2 = a^2 * p_2^2 * E / (24 * S^2)

% si plot barrido
if flag_debug
    t2plot = 0:.01:10;
    y = t2plot.^2 .* ( t2plot - k1) - k2;
    plot(t2plot, y, '.-')
    grid on
    % ylim([-10 10])
end

% Numero maximo iteraciones
NiterMax = 20;
t2ErrMin = 1e-3; % condicion convergencia solucion
sol_encontrada = 0; % se pone a 1 cuando se encuentra la solucion
t2     = t2Ini; % valor inicial

fprintf('Metodo Iterativo\n');
fprintf('  Inicio\n');
for iter=1:NiterMax
    % 
    t2_new = sqrt(k2 / ( t2 - k1 ));
    t2_err = t2_new - t2;
    t2 = t2_new;
    % 
    fprintf('  Iter %d. t2 : %.3f\n', iter, t2);
   
    if abs(t2_err) < t2ErrMin
        sol_encontrada = 1;
        break
    end
end
fprintf('  Fin\n');

% actualiza solucion
if sol_encontrada ==0
    disp('Error: t2 No converge!')
    t2 = -1;
end

end

