format short
for n=10:15
    t=1./(1:n);
    V=vander(t);
    disp([n, cond(V,inf)])
end