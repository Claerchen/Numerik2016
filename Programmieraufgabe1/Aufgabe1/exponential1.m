function [e,d] = exponential1
% es soll exp(-5,5) berechnet werten mittels der summenform der exponentialfunktion
% die werte i = 3,6,9,...,30 werden angezeigt
e = 0 ; for i=0:30
e = e + (-5.5)^i / factorial(i);
if (i>0) & (mod(i,3) == 0), disp(e); end
end
% d gibt die Abweichung zum gegebenen Wert an
d = 0.00408677140000000 - e
endfunction
