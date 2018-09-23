function x=ceb_nodes1(m,a,b)
    k=0:m;
    x=cos(((2*k+1) * pi) / (2*m+2));
    x=((b-a)*x+b+a)/2;
end