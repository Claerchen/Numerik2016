function LU_test()

for n=5:5:20
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
end





endfunction
