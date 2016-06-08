function z = direct_forward_solve(LU,b)
% L: linke untere Dreiecksmatrix, Die Funktion löst das Gleichungssystem Lz=b

l=length(b); % Länge des Lösungsvektor bestimmen

# Linke unere Dreiecksmatrix aus LU erstellen
for i=1:l
LU(i,i) = 1;
if i<l
  LU(i,i+1:l) = 0;
end
end

% forward_solve.m aus dem Moodle übernommen
	[n,n] = size(LU);
	z = zeros(n,1);
	for i=1:n
		z(i) = (b(i) - sum(LU(i,1:i-1)'.*z(1:i-1)))/LU(i,i); 
	end
end

