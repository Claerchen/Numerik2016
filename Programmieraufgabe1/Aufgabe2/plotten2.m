function plotten2
x = 0.8:5e-5:1.2 ;
y = single(((((((x-7).*x+21).*x-35).*x+35).*x-21).*x+7).*x-1) ;
plot(x,y)
axis([0.8 1.2 -1.5e-5 1.5e-5]);
endfunction
