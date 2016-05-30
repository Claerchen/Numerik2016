function V = Vandermonde(v)

n=length(v)
for i=1:n
  j=1:1:n;
  V(i,j)=v(i).^(n-j);
end