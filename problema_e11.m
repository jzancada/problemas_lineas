clear

P_R = 600E3
eta = 0.9
U_R = 3.3*sqrt(3)*1e3 % V
rho = 1.725E-6 % ohm / cm
s = 0.775; % cm
cos_phi = 1

P_S = P_R / eta
P_joule = P_S - P_R

I = P_R / ( sqrt(3) * U_R * cos_phi)

R = P_joule / (3*I^2)

longitud_km =  R * s / rho/ 100 / 1e3
