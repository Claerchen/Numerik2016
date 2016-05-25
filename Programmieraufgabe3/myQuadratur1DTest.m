function [Wert, Integral1, Integral2, Integral3] = myQuadratur1DTest
f = @(x) 1./x.^2;

#Integrationsgrenzen
a = 0.5;
b = 1;


# die quadraturgewichte der Trapezregel:
w_trapez = (b-a)/2.*[1 1];
#die gewischte der simpsonregel:
w_simpson = (b-a)/6.*[1 4 1];
#die gewichte der 3/8-regel:
w_dreiachtel = (b-a)/8.*[1 3 3 1];

#stützstellen
p_trapez = [a b];
p_simpson = [a (a+b)./2 b];
p_dreiachtel = [a a+(b-a)./3 b-(b-a)./3 b]


Wert = quad(f, a, b); #berechnet das integral

#Die Integrale nach den Quadraturformeln berechnen
Integral1 = myQuadratur1D(f, p_trapez, w_trapez);
Integral2 = myQuadratur1D(f, p_simpson, w_simpson);
Integral3 = myQuadratur1D(f, p_dreiachtel, w_dreiachtel);

#Differenzen
Differnez1 = Integral1 - Wert
Differnez2 = Integral2 - Wert
Differnez3 = Integral3 - Wert



endfunction
