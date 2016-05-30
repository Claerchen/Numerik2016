function x = direct_backward_solve(U,z)
% U: rechte obere Dreiecksmatrix, Die Funktion löst das Gleichungssystem Ux=z

n=length(z); % Länge des Lösungsvektor bestimmen
x(n)=z(n)/U(n,n); % erstes Element bestimmen

% alle weiteren Elemente des x-Vektors berechnen
for i=n-1:-1:1
  k=i+1:n;
  x(i)=1./(U(i,i))*(z(i)-(U(i,k)*x(k)));
end
