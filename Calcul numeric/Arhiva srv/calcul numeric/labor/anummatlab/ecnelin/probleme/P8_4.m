%P8_4
f1=@(x) [1-4*x(1)+2*x(1)^2-2*x(2)^3;-4+x(1)^4+4*x(2)+4*x(2)^4];
f1d=@(x) [-4+4*x(1),   -6*x(2)^2;  4*x(1)^3, 4+16*x(2)^3];
f2=@(x) [x(1)^2-x(2)+0.25; -x(1)+x(2)^2+0.25];
f2d=@(x) [2*x(1),  -1; -1, 2*x(2)];
f3=@(x) [2*x(1)+x(2)-x(1)*x(2)-2; x(1)+2*x(2)^2-cos(x(2))/2-3/2];
f3d=@(x) [2-x(2), 1-x(1); 1, 4*x(2)+1/2*sin(x(2))];
    
x0=[1;1];
[x1,ni1]=Newton(f1,f1d,x0,1e-6,0,100)
[x2,ni2]=Newton(f2,f2d,x0,1e-6,0,100)
[x3,ni3]=Newton(f3,f3d,x0,1e-6,0,100)