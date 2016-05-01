function plotten1
x = linspace(0.8, 1.2, 8000) ;
y = single((x-1).^7) ;
plot(x,y);
axis([0.8 1.2 -1.5e-5 1.5e-5]);
endfunction
