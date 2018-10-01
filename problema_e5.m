% interpolar
seccion_x = [250 300];
densidad_x = [2.3 2.15];

seccion = 281.1 ;
densidad = interp1(seccion_x, densidad_x, seccion);

K = 0.937;

delta_280 = densidad * K;
fprintf('delta_280= %.3f\n', delta_280);

i_max = delta_280 * seccion;
fprintf('i_max= %.3f\n', i_max);

%---------------------------------------------------
theta = 25;
h = 76; 
delta = 1;
epsilon_ra = 21.1
r = 21.8/2*1E-1 % cm
D = 8.8194*1E2 % cm
RH = 40/(2*sin(pi/2));
n=2;
beta = (1+(n-1)*r/RH)/n

Vd = sqrt(3)* 0.85 * delta * epsilon_ra * r/beta * log(D/r);
fprintf('Vd= %.3f\n', Vd);
