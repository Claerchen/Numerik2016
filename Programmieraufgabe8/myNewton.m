function [x, e, v] = myNewton (f, df, x0)

n =50; # Anzahl der maximalen Iterationen
a = 1:n; #Arrays generieren (a, e_speicher, v_speicher ist nur zur zwischenspeicherung)
e_speicher = 1:n;
a(1) = x0; #Startwert festlegen


for i=1:(n-1);
  x = 1:i; #arrays erst jetzt generieren, damit die länge passt
  e = 1:i;
  
  f(a(i))/df(a(i));
  a(i+1) = a(i) - f(a(i))/df(a(i));
  e_speicher(i) = abs(a(i+1)-a(i)); 
 
  x = a(1:i);
  e = e_speicher(1:i);
  if (abs(a(i+1)-a(i))<10^-12), break, end #abbruchbedingung

end

#funktionswerte ausgeben:
v = 1:i;
v = f(x);



endfunction
