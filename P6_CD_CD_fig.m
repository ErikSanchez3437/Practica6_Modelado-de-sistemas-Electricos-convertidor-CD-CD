% Condiciones iniciales
x0 = [0; 0];    % [iL; Vc]
% Resolver las ecuaciones diferenciales
[t,x] = ode45(@P6_CD_CD, [0 0.01], x0);

% Graficar el voltaje del capacitor
figure;
plot(t, x(:,2));
xlabel('Tiempo (s)');
ylabel('Voltaje del condensador (V)');