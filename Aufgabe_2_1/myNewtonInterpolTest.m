% myNewtonInterpolTest berechnet fuer n=7, n=12 und n=17 das Newtonpolynom 
% zur Runge-Funktion zu a) aequidistanten Stuetzpunkten und b) Tschebyscheff-
% Knoten und stellt alles grafisch dar

x = -1:0.01:1;
y = 1./(1+25*x.^2); % Runge-Funktion

%------------------------------ n=7 ------------------------------
figure(1)
n=7
  
% a = äquidistante Stützpunkte
% b = Tschebyscheff-Knoten
for i=1:(n+1)
 a(i) = -1+(2*(i-1))/(n);
 b(i) = cos((2*(i-1)+1)*pi/(2*(n)+2));
end
 
% Funktionswerte zu gegebenen Stützstellen berechnen
 y_a = 1./(1+25*a.^2);
 y_b = 1./(1+25*b.^2);
 
% Newtonkoeffizienten berechnen lassen
c_a = myNewtonInterpol(a, y_a);
c_b = myNewtonInterpol(b, y_b);


% Werte des Ausgleichspolynoms berechnen
p_a = c_a(1);
p_b = c_b(1);

t=1;
s=1;
for i=1:n
 t=(x-a(i)).*t;
 p_a = p_a+t*c_a(i+1);
 s=(x-b(i)).*s;
 p_b = p_b+s*c_b(i+1);
end


plot(x,p_a,'r-',a,y_a,'r*',  x,p_b,'b-', b,y_b,'b*',  x,y,'g-')
saveas(1, 'figure1.pdf')
print('PA2-1-N7.fig')

% Maximalen Fehler berechnen
for j=1:100
 % die Schrittweite von x ist 0.01, gefordert ist eine Schrittweite 
 % von 0.02, also nur jedes zweite Element (j*2) auswaehlen
 f_a(j)=y(j*2)-p_a(j*2);
 f_b(j)=y(j*2)-p_b(j*2);
end
% Betrag der Eintraege bilden
abs(f_a);
abs(f_b);

% Ausgabe des maximalen Fehlers fuer Polynom a und b
maxf_a=max(f_a)
maxf_b=max(f_b)



%------------------------------ n=12 ------------------------------
figure(2)
n=12
  
% a = äquidistante Stützpunkte
% b = Tschebyscheff-Knoten
for i=1:(n+1)
 a(i) = -1+(2*(i-1))/(n);
 b(i) = cos((2*(i-1)+1)*pi/(2*(n)+2));
end
 
% Funktionswerte zu gegebenen Stützstellen berechnen
 y_a = 1./(1+25*a.^2);
 y_b = 1./(1+25*b.^2);
 
% Newtonkoeffizienten berechnen lassen
c_a = myNewtonInterpol(a, y_a);
c_b = myNewtonInterpol(b, y_b);


% Werte des Ausgleichspolynoms berechnen
p_a = c_a(1);
p_b = c_b(1);

t=1;
s=1;
for i=1:n
 t=(x-a(i)).*t;
 p_a = p_a+t*c_a(i+1);
 s=(x-b(i)).*s;
 p_b = p_b+s*c_b(i+1);
end


plot(x,p_a,'r-',a,y_a,'r*',  x,p_b,'b-', b,y_b,'b*',  x,y,'g-')
saveas(2, 'figure2.pdf')
print('PA2-1-N12.fig')

% Maximalen Fehler berechnen
for j=1:100
 % die Schrittweite von x ist 0.01, gefordert ist eine Schrittweite 
 % von 0.02, also nur jedes zweite Element (j*2) auswaehlen
 f_a(j)=y(j*2)-p_a(j*2);
 f_b(j)=y(j*2)-p_b(j*2);
end
% Betrag der Eintraege bilden
abs(f_a);
abs(f_b);

% Ausgabe des maximalen Fehlers fuer Polynom a und b
maxf_a=max(f_a)
maxf_b=max(f_b)

%------------------------------ n=17 ------------------------------
figure(3)
n=17
  
% a = äquidistante Stützpunkte
% b = Tschebyscheff-Knoten
for i=1:(n+1)
 a(i) = -1+(2*(i-1))/(n);
 b(i) = cos((2*(i-1)+1)*pi/(2*(n)+2));
end
 
% Funktionswerte zu gegebenen Stützstellen berechnen
 y_a = 1./(1+25*a.^2);
 y_b = 1./(1+25*b.^2);
 
% Newtonkoeffizienten berechnen lassen
c_a = myNewtonInterpol(a, y_a);
c_b = myNewtonInterpol(b, y_b);


% Werte des Ausgleichspolynoms berechnen
p_a = c_a(1);
p_b = c_b(1);

t=1;
s=1;
for i=1:n
 t=(x-a(i)).*t;
 p_a = p_a+t*c_a(i+1);
 s=(x-b(i)).*s;
 p_b = p_b+s*c_b(i+1);
end

cle
plot(x,p_a,'r-',a,y_a,'r*',  x,p_b,'b-', b,y_b,'b*',  x,y,'g-')
saveas(3, 'figure3.pdf')
print('PA2-1-N17.fig')

% Maximalen Fehler berechnen
for j=1:100
 % die Schrittweite von x ist 0.01, gefordert ist eine Schrittweite 
 % von 0.02, also nur jedes zweite Element (j*2) auswaehlen
 f_a(j)=y(j*2)-p_a(j*2);
 f_b(j)=y(j*2)-p_b(j*2);
end
% Betrag der Eintraege bilden
abs(f_a);
abs(f_b);

% Ausgabe des maximalen Fehlers fuer Polynom a und b
maxf_a=max(f_a)
maxf_b=max(f_b)

% ---------------------- Ausgabe der Fehler ---------------------------
%{
n =  7
maxf_a =  0.24533
maxf_b =  0.38951
n =  12
maxf_a =  3.6567
maxf_b =  0.065328
n =  17
maxf_a =  4.2190
maxf_b =  0.054867
}%