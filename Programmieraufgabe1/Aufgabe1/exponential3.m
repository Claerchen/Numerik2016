function [e d] = exponential3
% es soll exp(-5,5) berechnet werten mittels der summenform der exponentialfunktion
% für i=3,6,9,...,30 werden die ergebnisse dargestellt
e = 0 ; for i=0:1:30
e = e + (-0.5)^i / factorial(i);
 if (i>0) & (mod(i,3)==0) disp(e^11) ; end
end
e = e^11;
% d gibt die Abweichung zum gegebenen Wert an
d = 0.00408677140000000 - e
endfunction
