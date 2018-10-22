%
clear

U_V = 20E3
gamma_s = 1
gamma_p = 1

rho = 28.6
alpha = 4.03E-3

theta_max = 90
S = 240
d_c = 17.9
D_aisl = 30
D_ext = 37.1
tan_delta = 0.004
epsilon = 2.5

R0 = rho / S
Rp = R0 * (1+alpha*(theta_max-20))
R = Rp * (1 + gamma_s + gamma_p)

C = epsilon*1e-9 / (18 * log(D_ext/d_c))
omega_d = 2*pi*50 * C * (U_V / sqrt(3))^2 * tan_delta
omega_d_total = 3*omega_d
