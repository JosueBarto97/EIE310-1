%Ejercicio 1
%dtft de un impulso
w=0:pi/200:pi;
[x,n]=impulso(0,-1,1);
X=dtft(x,n,w);
subplot 331 ; plot(w/pi, abs(X)); title('magnitud impulso');
subplot 332 ; plot(w/pi, angle(X)); title('angulo impulso');


