% 
Pc = 0.986 % daN/m
T = 2817 % daN
dc = 21.8 % mm

% 
a = 390 % m
Dais = 320 % mm
Pais = 8.3 % daN
lais = 170 % mm
n = 10
Qais = 160 % kN

peso_c = Pc * a % daN
peso_hielo = 0.18*sqrt(dc)*a % daN
peso_cadena = n * Pais
peso_vais = 70*(n*lais*Dais)/1E6

peso_aparente_ais = sqrt((peso_c + peso_hielo + peso_cadena)^2 + peso_vais^2) % daN

CS = Qais / peso_aparente_ais * 100

% b
CS_b = Qais * 100 / (0.5*T)

Q_ais_daN = 3*peso_aparente_ais % daN
Q_ais_kN = Q_ais_daN*10*1e-3 % kN

T_rotura_daN = 0.5*Qc/CS 
T_rotura_daN = 3*T_rotura_daN
T_rotura_kN = T_rotura_daN * 10 / 1000






