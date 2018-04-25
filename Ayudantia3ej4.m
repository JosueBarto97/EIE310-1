%ejercicio 4 
%dtft de funcion n°3
w=0:pi/200:pi;
[u,n] = escalon(0,-30,30); 
X = 0,9*exp(n)
Z = dtft(X,n,w);

subplot 333 ; plot(w/pi, abs(Z)); title('magnitud Z');
subplot 334 ; plot(w/pi, angle(Z));title('angulo Z');
