function [c] = myQuadratur1D (f, p, w)

d=length(p);
z=0; 
for i=1:d;
z = z + f(p(i))*w(i);
end
c = z;

endfunction
