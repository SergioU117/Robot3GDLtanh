function [q1, q2, q3, xj, yj, zj] = Inversa(xf, yf, zf, L1, L2, L3, L4)

d3 = sqrt(xf^2 + zf^2);
q3 = atan2(-zf,xf);

xj = (d3-L4)*cos(q3);
zj = -1*(d3-L4)*sin(q3);
yj = yf;

% dx = L4*cos(q3);

theta = atan2(yj,xj);
r = sqrt(xj*xj + yj*yj);

k = (((L3.*L3)-(L1.*L1)-(r.*r))./(-2.*L1.*r));

phi = atan2(sqrt(1-(k.*k)),k);

q2 = pi/2 - phi - theta;     %   q2

xi = L1*sin(q2);
yi = L1*cos(q2);

q1 = atan2(yj-yi,xj-xi);    %    q1

end