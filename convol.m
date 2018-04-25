function [y,yn] = convol(x,nx,h,nh)
  %convolucion modificadapara incluir informacion de tiempo
  %convuelve 'x' con 'h' usando conv de matlab
  %Genera el vector 'ny' el cual sirve como �ndice del vector 'y'
  %nx = �ndice de x    nh = �ndice de h
  ny1 = nx(1)+nh(1);                      %Primer elemento del vector ny
  ny2 = nx(length(x))+nh(length(h));      %�ltimo elemento del vector ny
  ny=[ny1:ny2];                           %Crea el vector ny
  y=conv(x,h);                            %Convuelve x con h --->y