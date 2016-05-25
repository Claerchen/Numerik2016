function [v] = myQuadraturSum1D (f,w,p,a,b,N)

M=length(w); #Anzahl der Gewichte bzw Stützstellen herausfinden

# Grenzen der Teilintervalle bestimmen
for i=1:(N+1);
t(i) = a+(i-1)*(b-a)/N;
end

integral = 0;
for i=1:N
for j=1:M
h(j) = (t(i+1)-t(i))/2*p(j) + (t(i+1)+t(i))/2; #die stützstellen für das jeweilige teilintervall bestimmen
end
integral = integral + dot(f(h),w); # das integral jedes teilintervals ausrechnen und aufsummieren
end

v = integral;


endfunction
