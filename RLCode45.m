
[t, x] = ode45(@RLC, [0 0.001], [0 0]);  

figure(1)
plot(t, x(:,1));  
grid on;
xlabel('Tiempo (s)');
ylabel('Tensión (V)');
title('Respuesta del circuito RLC');
