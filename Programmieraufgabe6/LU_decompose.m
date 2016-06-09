function LU = LU_decompose(A)
% Größe der Matrix feststellen
[n,n]=size(A);
I = eye(n);

% Matrix initialisieren
LU = A;

for i=2:n;
 for a = i:n;
  LU(a,i:n)=LU(a,i:n)-LU(i-1,i:n)./LU(i-1,i-1).*LU(a,i-1);
  I(a,i-1:n) = I(a,i-1:n)+I(i-1,i-1:n)./LU(i-1,i-1).*LU(a,i-1);
  LU(a,1:i-1) = I(a,1:i-1);
 end
end


end