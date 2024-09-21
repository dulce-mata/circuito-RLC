function dx = RLC(t, x)
    %Parámetros del circuito
    R = 100;       % Resistencia en ohmios
    L = 6e-3;      % Inductancia en henrios
    C = 0.1e-6;    % Capacitancia en faradios

    %Parametros del pulso
    amplitud=1;
    frecuencia=1/0.02;
    ciclo_de_trabajo=50;
    periodo = 1 / frecuencia;
    
    % pulso rectangular 
    if mod(t, periodo) < ciclo_de_trabajo / 100 * periodo
        vin = amplitud;
    else
        vin = -amplitud;
    end


    % Ecuaciones diferenciales del circuito RLC
    dx = zeros(2,1);
    dx(1) = x(2);  
    dx(2)=(1/(L*C))*(-C*R*x(2)-x(1)+vin);

end