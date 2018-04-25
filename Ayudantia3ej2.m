%Ejercicio 2
%dtft de una funcion

w=0:pi/200:pi;
[x,a]=impulso(-1,-5,5);
[y,b]=impulso(0,-5,5);
[z,c]=impulso(1,-5,5);
[v,d]=impulso(2,-5,5);
[k,e]=impulso(3,-5,5);

X = 5*x + 4*y + 3*z + 2*v + k

Y = dtft(X,a,w)

subplot 333 ; plot(w/pi, abs(Y)); title('magnitud Y');
subplot 334 ; plot(w/pi, angle(Y));title('angulo Y');