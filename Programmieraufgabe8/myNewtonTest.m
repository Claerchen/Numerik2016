function  myNewtonTest

f = @(x) cos(2*x).^2-x.^2
df = @(x) -2*(x+sin(4*x))
x0 = 0.75

[x, e, v] = myNewton(f, df, x0)

i = 1:length(e)


figure(1)
semilogy(i, e)
saveas(1, 'PA8.1.pdf')
print('.fig')

endfunction
