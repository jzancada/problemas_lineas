d = 30.42 % mm
D = d * 1e-3

theta_amb = 20
theta_max = 55
v_viento = 1.2
w = 400
alpha = 0.004
Rcc = 0.0596
beta  = 0.5

epsilon = 0.5

Q_R = epsilon * 5.6696E-8 * pi * D * ((theta_max+273.16)^4 - (theta_amb+273.16)^4)

Q_C1 = ( 1.01 + 11.27 * (d*v_viento)^0.52) * 0.02723 *(theta_max-theta_amb)
Q_C2 = 0.23714 * (d*v_viento)^0.6 * (theta_max-theta_amb)

Q_S = beta * w * D

R_P50 = Rcc * ( 1 + alpha*(theta_max-theta_amb))

I_max = sqrt((Q_R + Q_C2 - Q_S)/(R_P50/1000))

