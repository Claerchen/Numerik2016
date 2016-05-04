% RUnge Funktion geplottet
t = -1:0.1:1
z = 1./(1+25*t.^2)
plot(t,z)


% aequidistante Knoten:
n=17
for i=1:(n+1)
 x(i)=-1+(2*i)/n;
end
% Runge-Funktion
y=1./(1+25*x.^2);

% Newton-Koeffizienten zu den gegebenen Stuetzstellen
c = myNewtonInterpol(x,y)

% Polynom
p=c(1);
a=-1:0.001:1;
b=1;
for i=1:n
b = (a-x(i)).*b;
p+=c(i+1)*b;
end

plot(a,p)

for i=1:(n+1)
 x2(i)=cos((2*i+1)*pi/(2*i+2));
end
% Runge-Funktion
y=1./(1+25*x2.^2);

% Newton-Koeffizienten zu den gegebenen Stuetzstellen
c = myNewtonInterpol(x,y)

% Polynom
p=c(1);
a=-1:0.001:1;
b=1;
for i=1:n
b = (a-x2(i)).*b;
p+=c(i+1)*b;
end
plot(a,p)