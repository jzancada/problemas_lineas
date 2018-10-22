clear

% vano regulador
a_r = sqrt((150^3 + 600^3 + 300^3) / (150 + 600 + 300)) 

% interpolar
vano_tabla = [450 500];
T_tabla = [496 495]
T_r = interp1(vano_tabla, T_tabla, a_r)

plot(vano_tabla, T_tabla)
grid

% b) 
a1p = sqrt(150^2 + 30^2)
a2p = sqrt(600^2 + 40^2)
a3p = sqrt(300^2 + 20^2)

p = 0.433
f1 = p * 150 * a1p / (8*T_r)
f2 = p * 600 * a2p / (8*T_r)
f3 = p * 300 * a3p / (8*T_r)

% c) 
vano_tabla = [400 500];
T_tabla = [477 479]
T_r = interp1(vano_tabla, T_tabla, a_r)

flecha =  p * 600 * a2p / (8*T_r)
