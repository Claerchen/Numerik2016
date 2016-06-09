function LU_test()

for n=10:5:25
n
# gewünsche vandermondematrix erstellen
#rechte seite b erstellen
for i=1:n
c(i) = (n-i)/n;
if i<(n/2)
  b(i) = 1;
else 
  b(i) = 2;
 end
end
V = vander(c,n);


LU = LU_decompose(V);
z = forward_solve(LU,b);
x = backward_solve(LU, z);

% Residuum
M=V*x-transpose(b);
M1=transpose(M)*M;
lambda=sqrt(abs(eig(M1)));
res=max(lambda)


end

endfunction
