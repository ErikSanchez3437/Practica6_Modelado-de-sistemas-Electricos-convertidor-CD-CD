%Erik Sánchez 222834371
function dx=P6_CD_CD(t,x)   
% Parámetros del circuito
R = 10; % Resistencia (ohms)
L = 2e-3; % Inductancia (H)
C = 10e-6; % Capacitancia (F)
U = 32;   %Voltaje (V)
d = 0.4;  %PWM 40%

iL = x(1); %Corriente en el inductor
Vc = x(2); %Voltaje en el capacitor


% Definir la función de las ecuaciones diferenciales
dx=zeros(2,1);
dx(1:2)=[(-Vc+(U*d)-(1-d))/L; (iL/C)-(Vc/(R*C))];