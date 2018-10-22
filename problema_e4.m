% datos
clear

R_p_20 = 0.3066; % ohm / km 
r = 7.0; % mm
H_m = 900; % m
long_km = 10; % km
D_ab = 2.4; % m
D_bc = sqrt(2.5^2 + 1.2^2 );
D_ac = D_bc


alpha = 0.004
N = 1;

R_p_25 = R_p_20 * (1+alpha*(25-20))
R_fase = R_p_25 * long_km

D_eq = (D_ab * D_bc * D_ac)^(1/3)
D_sq = r/1000 * exp(-1/4) 
L_p = 2e-7 * log(D_eq / D_sq)

X_pl = 2*pi*50* L_p *1e3
X_l = X_pl * long_km

% apartado 2
S = 116.2
k = 0.916

s_tabla     = [95 125]
delta_tabla = [ 3  2.7]
delta = interp1(s_tabla, delta_tabla, S)

I_max = delta * k * S

% apartado 3
theta_ext = 10
v_viento = 0.6
epsilon = 0.5
sigma = 5.6696E-8
theta_max = 70
Q_r = epsilon * sigma * pi * (2*r/1000) * ((theta_max+273.16)^4 - (theta_ext+273.16)^4)
Q_c1 = (1.01 + 11.27*(2*r*v_viento)^0.52)*0.02723*(theta_max - theta_ext)
Q_c2 = 0.2371*(2*r*v_viento)^0.6*(theta_max - theta_ext)
Q_c = Q_c1

Q_s = 0.5 * 250 * 0.014

Rp70 = R_p_20 * (1 + alpha*(50))

I_max = sqrt((Q_r + Q_c - Q_s) / (Rp70*1e-3))

