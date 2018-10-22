% datos

R_p_20 = 0.1194; % ohm / km 
r = 10.9; % mm
H_m = 900; % m
long_km = 140; % km
D_ab = 6; % m
D_bc = D_ab;

alpha = 0.004
s = 40 % cm
N = 2;

R_p_25 = R_p_20 * (1+alpha*(25-20))
R_p_fase = R_p_25 / 2
R_fase = R_p_fase * long_km

D_eq = (D_ab * 2*D_ab * D_bc)^(1/3)
D_sq = (r/1000 * exp(-1/4) * s/100 )^(1/2)
L_p = 2e-7 * log(D_eq / D_sq)

X_pl = 2*pi*50* L_p *1e3
X_l = X_pl * long_km

D_rmg = (r/1000 * s/100 )^(1/2)
C_p = 2*pi*8.85E-12 / log(D_eq/D_rmg)

B_p = 2*pi*50*C_p
B = B_p * long_km * 1e3 * 1e3

% 
I_carga = 100E6 / (sqrt(3)*220*1e3)
Pjoule = 3*R_fase*I_carga^2

% apartado 3
md = 0.85
mt = 1
h = 76*10^(-0.9/18.4)
theta = 25-5*0.9
delta = 3.921 * h / (273 + theta)
epsilon_ra = 21.1
r_cm = r / 10
DMG_cm = D_eq * 100
R_H = s / (2*sin(pi/N))
beta = (1+(N-1)*r_cm/R_H)/N

U_d_seco = sqrt(3) * md * mt * delta * epsilon_ra * r_cm / beta * log(DMG_cm/r_cm)
U_d_humedo = 0.8 * U_d_seco

% apartado 4

N = 1
R_H = s / (2*sin(pi/N))
beta = (1+(N-1)*r_cm/R_H)/N

U_d_seco = sqrt(3) * md * mt * delta * epsilon_ra * r_cm / beta * log(DMG_cm/r_cm)
U_d_humedo = 0.8 * U_d_seco

% perdidas efecto corona
P = 241 / delta *(50+25) * sqrt(r_cm / DMG_cm) * (245/sqrt(3) - U_d_seco / sqrt(3))^2 * 1e-5
P_seco = P  * long_km

P_humedo = 241 / delta *(50+25) * sqrt(r_cm / DMG_cm) * (245/sqrt(3) - U_d_humedo / sqrt(3))^2 * 1e-5
P_humedo = P_humedo  * long_km
