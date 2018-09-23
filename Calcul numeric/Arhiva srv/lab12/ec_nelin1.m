f=@(x)x.^3-x-1;
fd=@(x)3*x.^2-1;
fplot(f,[-4,4])
grid on
[z,ni]=Newton(f,fd,2,1e-8,0,80)