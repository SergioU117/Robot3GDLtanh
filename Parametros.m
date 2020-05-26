% clc
% clear 

%Coeficiente de friccion
b=5;
fc=2;

%posiciones iniciales
q1_0=0;
q2_0=90;
q3_0=90;

%Trayectoria


%% Control
% q1
Kp1 = 30;
alpha1 = 10;

Kv1 = Kp1*0.20;
beta1 = 1;

% q2
Kp2 = 30;
alpha2 = 10;

Kv2 = Kp2*0.2;
beta2 = 1;

% q3
Kp3 = 30;
alpha3 = 10;

Kv3 = Kp3*0.2;
beta3 = 1;

%%  Simulacion en simscape multibody

% DatosXYZ=[...
%    0   0   0;
%    0.001   0.001   0.001];
DatosXYZref=[...
    0   0   0;
    0.001   0.001   0.001];
      
res=sim('MeArmV1_3_2tanh');
% DatosXYZ=res.XYZ.signals.values ;
DatosXYZref=res.XYZref.signals.values;
res=sim('MeArmV1_3_2tanh');


