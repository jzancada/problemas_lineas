% 
Pc = 432.7 % daN/km
Qc = 4316 % daN
dc = 14 % mm
CS = 3

% 
a = 40 % m
Dais = 255 % mm
Pais = 3.4 % daN
lais = 127 % mm
n = 5

peso_c = Pc * a * 1E-3 % daN
peso_hielo = 0.18*sqrt(14)*a % daN
peso_cadena = n * Pais
peso_vais = 70*(n*lais*Dais)/1E6

peso_aparente_ais = sqrt((peso_c + peso_hielo + peso_cadena)^2 + peso_vais^2) % daN

Q_ais_daN = 3*peso_aparente_ais % daN
Q_ais_kN = Q_ais_daN*10*1e-3 % kN

T_rotura_daN = 0.5*Qc/CS 
T_rotura_daN = 3*T_rotura_daN
T_rotura_kN = T_rotura_daN * 10 / 1000






