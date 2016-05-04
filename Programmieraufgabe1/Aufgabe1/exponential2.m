function [e, d] = exponential2
% es soll exp(-5,5) berechnet werten mittels der summenform der exponentialfunktion
% n gibt die anzahl der iterationen an
e = 0 ; for i=0:30
e = e + (5.5)^i / factorial(i);
if (i>0) & (mod(i,3)==0), disp(1/e); end
end
e = 1/e;
% d gibt die Abweichung zum gegebenen Wert an
d = 0.00408677140000000 - e
endfunction
