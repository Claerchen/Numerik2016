function [x, numit] = my_jacobi(A,b,x0,eps,maxit)
% Die Loesung von Ax=b soll mit dem Jacobi-Verfahren approximiert werden
n=length(A);
xkplus1=zeros(1,n);
xk=x0;
% Hilfsvektor c
c=zeros(1,n);
% Eingangs-Defekt
d0=b-A*x0;
d=d0;
% Anzahl Iterationsschritte
numit=0;
while d>(eps*d)
  if numit>maxit
    printf('Anzahl der maximalen Iterationen überschritten!\n')
    break, end
  else
    for i=1:n
      for j=1:n
        if(j!=i)
          c(i)+=A(i,j)*xk(j)
        else
          c(i)+=0;
      end
      xkplus1(i)=A(i,i)*(b(i)-c(i)
    end
    numit+=1
    d=norm(A*xkplus1-b) % norm() berechnet die Euklidsche Norm eines Vektors
  end
end

endfunction