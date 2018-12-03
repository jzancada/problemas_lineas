% datos
clear

a56_m = 500
a67_m = 565
a78_m = 600
b8_m = 15

del_m = 1.2
dpp_m= 1.4

n_conductores = 2

sin_beta = (2.5 -0.2-del_m)/1.7
beta_rad = asin(sin_beta)
beta_deg = beta_rad / pi * 180

p_v_2 = 1/2*60*14E-3
a_v6 = (a56_m + a67_m)/2

Ft6 = 2*p_v_2*a_v6

F_va = 70/2 * 0.254 * 1.7
P_gv6 = 2*0.433 * 532.5
P_a6 = 43.5
P_HC6 = 50

tan_beta = (Ft6 + F_va/2)/(P_gv6+P_HC6+P_a6/2)
beta_rad = atan(tan_beta)
beta_deg = beta_rad / pi * 180

G = (Ft6 + F_va/2)/tan(40.3/180*pi) - P_gv6 - P_HC6 - P_a6/2

%
a_v7 = (a67_m + a78_m)/2
Ft7 = 2*p_v_2*a_v7

P_gv7 = 2* 0.433* a_v7 + 802*(-15/600)
tan_beta = (Ft7 + F_va/2)/(P_gv7+P_HC6+P_a6/2)
beta_rad = atan(tan_beta)
beta_deg = beta_rad / pi * 180

% 

