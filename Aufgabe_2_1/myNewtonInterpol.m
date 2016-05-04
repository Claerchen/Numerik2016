function [c]=myNewtonInterpol(x,f)
% myNewtonInterpol berechnet zu gegebenen Stuetzstellen x0,_,xn und den 
% zugehoerigen Werten f0,_,fn die Koeffizienten ci des Newtonschen 
% Interpolationspolynoms
%n=size(x,2) % Groesse des Zeilenvektors bestimmen
n=length(x)

% gegebene Werte in die Matrix eintragen
for i=1:n
  M(i,1)=x(i);
  M(i,2)=f(i);
end

for j=3:(n+1)
 for i=(j-1):n
  M(i,j)=(M(i,(j-1))-M((i-1),(j-1)))/(M(i,1)-M((i-j+2),1));
 end
end

for i=1:n
 c(i)=M(i,(i+1));
end

endfunction 

