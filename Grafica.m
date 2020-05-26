tiempo = 4; % Tiempo deseado
res = 0.01; % Resolucion

t = 0:res:tiempo;

theta = (2*pi/tiempo)*t;
rho = 4*sin(2*theta);

% figure
% polarplot(theta,rho)

[x, y] = pol2cart(theta,rho); % Grafica en cartesianas

for i = 1:size(x,2)
    z(i) = 0;
end

figure
plot3(x,y,z)
hold on
grid on