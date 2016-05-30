function z = direct_forward_solve(L,b)
% L: linke untere Dreiecksmatrix, Die Funktion löst das Gleichungssystem Lz=b

n=length(b); % Länge des Lösungsvektor bestimmen
z(1)=b(1)/L(1,1); % erstes Element bestimmen

% alle weiteren Elemente des z-Vektors berechnen
for i=2:1:n
  k=1:i-1;
  z(i)=1./(L(i,i))*(b(i)-(L(i,k)*z(k)));
end
