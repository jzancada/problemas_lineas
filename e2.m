% e2
clear

Ia = 150
Ib = 150*exp(j*(-120)/180*pi)
Ic = 150*exp(j*( 120)/180*pi)

da1 = sqrt(1.8^2 + (2-0.3)^2)
db1 = sqrt(1.8^2 + 0.3^2) 
dc1 = sqrt(1.8^2 + 2.3^2)

da2 = dc1
db2 = db1
dc2 = da1

lambda_1 = 2e-7 * (Ia * log(1/da1) + Ib * log(1/db1) + Ic * log(1/dc1))
fprintf("lambda_1 = %.4g |_ %.2f[deg]\n", abs(lambda_1), angle(lambda_1)/pi*180);

lambda_2 = 2e-7 * (Ia * log(1/da2) + Ib * log(1/db2) + Ic * log(1/dc2))
fprintf("lambda_2 = %.4g |_ %.2f[deg]\n", abs(lambda_2), angle(lambda_2)/pi*180);

lambda_t = lambda_1 - lambda_2
fprintf("lambda_t = %.4g |_ %.2f[deg]\n", abs(lambda_t), angle(lambda_t)/pi*180);

u = j*lambda_t * 2*pi*50
fprintf("u = %.4g |_ %.2f[deg]\n", abs(u)*1e3, angle(u)/pi*180);
