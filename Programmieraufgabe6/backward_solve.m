function x = backward_solve (LU, z)

# U aus LU entnehmen
l = length(LU);
for i=2:l
  LU(i, 1:i-1) = 0;
end

#lösefunktion aus dem moodle übernommen
[n,n] = size(LU);
x = zeros(n,1);
for i=n:-1:1
		x(i) = (z(i) - sum(LU(i,i+1:n)'.*x(i+1:n)))/LU(i,i); 
end

endfunction
