clear all;
clc;
%mi rut es: 19.737.727-5
a=1; b=9; c=7; d=3; e=7; f=7; g=2; h=7; i=5;
B = ((a+b)*c)
r = ((i+e)*h)/((b+c+e)*10)
R = ((i+e)*(a+c))/(b+c+e+g+h)
%funcion exponencial decreciente
n = 0 :1 :10 ; x = B * r .^ n;
subplot 331; stem(n,x);
xlabel('n'); title('S. exponencial decreciente'); grid
m = 0 : 1: 10; y = B * R .^ m;
%funcien exponencial creciente 
subplot 332; stem(m, y);
xlabel('n'); title('S. exponencial creciente'); grid
%funcion compleja
w = [-20 :1 : 20]; q = -((b+c+1)/60) + (((a*h*d)+1)/60)*j; z= exp(q*w);
subplot 333; stem(w, real(z)); title('parte real'); xlabel('w')
subplot 334; stem(w, imag(z)); title('part imag'); xlabel('w')
subplot 335; stem(w, abs(z)); title('magnitud'); xlabel('w')
subplot 336; stem(w, (180/pi)*angle(z)); title('fase {*}'); xlabel('w')
%funcion sinusoidales
j = [0 :1 : 30];
u = 3*cos(2*pi*((2+d+f)/90)*j+pi/3);
subplot 337; stem(j,u);
xlabel('j'); title('S. sinusoidal'); grid
%funcion impulso
o = [-b : b];
p = [(o-a) == 0];
subplot 338; stem(o,p); title('S. impulso'); grid
%funcion escalon
k = [-f : f];
K = [(k - a) >= 0];
subplot 339; stem(k, K); title('S. escalon'); xlabel('k'); grid

