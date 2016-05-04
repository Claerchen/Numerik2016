<<<<<<< HEAD
function [a b]=myNewtonInterpolTest

x = -1:0.1:1;
y =1./(25+x.^2);

 #plot(x,y, '*g')
 
 n = 17
 
 # a = äquidistante Stützpunkte
 # b = tschebyscheff-knoten
 for i=1:(n+1)
 a(i) = -1+(2*(i-1))/(n);
 b(i) = cos((2*(i-1)+1)*pi/(2*(n)+2));
 end
 
# funktionswerte zu gegebenen stützstellen berechnen
 y_a = 1./(25+a.^2);
 y_b = 1./(25+b.^2);
 
#newtonkoeffizienten berechnen lassen
c_a = myNewtonInterpol(a, y_a)
c_b = myNewtonInterpol(a, y_b)

#werte des ausgleichspolynoms berechnen
p_a = c_a(1);
p_b = c_b(1)
t=1;
s=1;
for i=1:n
t=(x-a(i)).*t;
p_a = p_a+t*c_a(i+1);
s=(x-b(i)).*s;
p_b = p_b+t*c_b(i+1);
end


#p_a und y liegen so übereinander, dass man sie nicht auseinanderhalten kann 
plot(x, p_a, 'r-', a, y_a, 'r*', x, p_b,'b-', b, y_b, 'b*', x, y,'g-')

#saveplotlyfig(figure, 'your_image_filename.png') mit dem speichern das kriege ich gerade im code nicht hin, nur manuell

#Anmerkungen:
#Ich vermute, dass die Farben nicht richtig angezeigt werden zumindest liegen nicht alle Konten auf der richtigen Funktion...





endfunction
||||||| merged common ancestors
=======
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
>>>>>>> 24f6fb72b5623a9e43929d8fc6e7915f234893cd
