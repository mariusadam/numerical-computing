f=@(x)x-cos(x);
fd=@(x)1+sin(x);
[z,ni]=Newton(f,fd,1/2,0,1e-8,20)