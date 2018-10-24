clear

P_R = 15E6
eta = 0.95
U_R = 132e3 % V
rp = 1
cos_phi = 0.9
% 
% I = P_R / ( sqrt(3) * U_R * cos_phi)
% P_joule = 5/100*P_R
% 
% R = P_joule / (3*I^2)
% 
% longitud_km =  R


P_joule = 5/100*P_R/(1-5/100)
P_S = P_R + P_joule
R = P_joule / (3*I^2)
longitud_km =  R
