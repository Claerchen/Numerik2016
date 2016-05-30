function [Integral] = myQuadraturSum1DTest

% anonyme Runge-Funktion
f = @(x) 1./(1+25*x.^2);

% Intervallgrenzen
a=-1;
b=1;

# exakter wert:
wert = quad(f, -1, 1);

#Trapezregel:
for N=1:100;
w=(b-a)/(2*N)*[1 1];
p=[-1 1];

Integral = myQuadraturSum1D (f,w,p,a,b,N);

#abweichung ausrechnen
abweichung_trapez(N) = wert - Integral;
end

#simpson regel
for N=1:100;
w=(b-a)/(6*N)*[1 4 1];
p=[-1 0 1];

Integral = myQuadraturSum1D (f,w,p,a,b,N);

#abweichung ausrechnen
abweichung_simpson(N) = wert - Integral;
end


#milne-regel
for N=1:100;
w=(b-a)/(90*N)*[7 32 12 32 7];
p=[-1 0.5 0 0.5 1];

Integral = myQuadraturSum1D (f,w,p,a,b,N);

#abweichung ausrechnen
abweichung_milne(N) = wert - Integral;
end


#plotten
figure(1)
x = 1:N;
semilogy(x, abs(abweichung_trapez), 'r-', abs(abweichung_simpson), 'b-', abs(abweichung_milne), 'g-')
title('Fehler der summierten Quatraturformeln logarithmisch aufgetragen')
legend('Trapezregel','Simpsonregel', 'Milne-Regel')
xlabel('N: Anzahl der Intervalle') % x-axis label
ylabel('Logarithmierter Fehler') % y-axis label

saveas(1, 'figure1.pdf')
print('myQuadraturSum1DPlot.fig')


endfunction
