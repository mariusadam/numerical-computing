format short
for n=10:15
    t=1./(1:n);
    v=vander(t);
    disp([n,cond(v,inf)])
end