function x=ceb_node1(m,a,b)
k=0:m;
t=cos((2*k+1)*pi/(2*m+2));
x=((b-a)*t+b+a)/2;
end