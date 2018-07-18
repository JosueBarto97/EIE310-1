% Datos
fc = 200; % frecuencia de corte inferior en [Hz]
FC = 250; % frecuencia de corte superior en [Hz]
Fs = 1000; % frec. de muestreo en [Hz]
N = 10001; % longitud de la respuesta impulso
f1 = 0; % frec. mínima para el cálculo de la respuesta de frec.
f2 = 500; % frec. máxima para el cálculo de la respuesta de frec.
m1 = 1e-6; % límite inferior del gráfico de magnitud
% Diseña el filtro
wn = [2 * fc / Fs , 2 * FC / Fs];
b = fir1(N-1, wn, 'bandpass',hanning(N));
t = fir1(N-1, wn, 'bandpass',hamming(N));
k = fir1(N-1, wn, 'bandpass',kaiser(N,10));

% Grafica h(n)
n = [1 : N]; subplot 411; stem(n, b); grid; xlabel('n'); title('h(n)')

% Calcula la respuesta de frecuencia obtenida en hanning
f = [f1 : (f2-f1)/1023 : f2];

Hn = freqz(b, 1, f, Fs);

% Grafica Mag[H(f)]
subplot 412; semilogy(f, abs(Hn)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Hanning Mag(H)')

Hm = freqz(t, 1, f, Fs);

% Grafica Mag[H(f)]
subplot 413; semilogy(f, abs(Hm)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Hamming Mag(H)')


Hk = freqz(k, 1, f, Fs);

% Grafica Mag[H(f)]
subplot 414; semilogy(f, abs(Hk)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Kaiser Mag(H)')