%mi rut es 19.737.727-5 

% Respuesta escalon filtro IIR
% y(n) = 0.1 x(n) + 0.9 y(n-1)
vi = 1; % voltaje de entrada
a = 0.9; % constante del filtro 
dt = 10e-3; % 1/100 Hz = 10mseg
t(1) = 0; % indice 1 => t = 0
vf(1) = 0; % indice 1 => t = 0
for i = 2 : 41;
    t(i) = (i-1) * dt;
    vf(i) = (1-a) * vi + a * vf(i-1);
end
close; stem(t, vf); % grafico
xlabel('seg'); grid;