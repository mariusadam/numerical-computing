function x=ceb_node1(m,a,b)
k=0:m;
t=cos(k*pi/m);
x=((b-a)*t+b+a)/2;
end