%mi rut es 19.737.727-5 

A=1; B=9; C=7; D=3; E =7; F=7; G=2; H=7; I=5; 

t = 0 : 0.3 : 30; v = exp(-((B+A)/(2*C*(D+E)))*t).*sin(t);

subplot 121; plot(t,v); title('PLOT');
xlabel('tiempo [seg]'); ylabel('Volts'); grid;
subplot 122; stem(t,v); title('STEM');
xlabel('tiempo [seg]'); ylabel('Volts'); grid;