function [q1, q2, q3, xj, yj, zj] = Inversa(xf, yf, zf, L1, L2, L3, L4)

xf=xf-44.61321769;
yf=yf-52.05005000;
zf=zf+6.64999268;


d3 = sqrt(xf*xf + zf*zf);
q1 = atan2(-zf,xf);


xj = xf-L4*cos(q1);
zj = (zf+L4*sin(q1));
yj = yf;

% dx = L4*cos(q3);

r = sqrt(xj*xj + yj*yj);
theta = atan2(yj,xj);


k = (((L3.*L3)-(L1.*L1)-(r.*r))./(-2.*L1.*r));

gamma = atan2(sqrt(1-(k.*k)),k);

q3 = pi/2-theta-gamma;    %   q3

xi = L1*sin(q3);
yi = L1*cos(q3);

q2 = atan2(yj-yi,xj-xi);    %    q2

end