function [A,b]=my_test_system(n)

T=eye(n);

for i=1:n
  T(i,i)+=3;
  if i<n
    T(i,i+1)=-1;
  end
  if i>1
    T(i,i-1)=-1;
  end
end

I=(-1)*eye(n);
N=zeros(n);

A=zeros(n^2);
for i=1:n:n^2
  A(i:i+n-1, i:i+n-1)=T; % T-Matrizen auf die Diagonale von A schreiben
end

for i=1:n:n^2-n
  A(i:i+n-1, i+n:i+2*n-1)=I; % obere Nebendiagonale
  A(i+n:i+2*n-1, i:i+n-1)=I; % untere Nebendiagonale
end

b=ones(n^2,1)

endfunction