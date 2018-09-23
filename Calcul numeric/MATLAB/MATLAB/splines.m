% splines

func=@(x) sin(sqrt(17)*pi*x)+cos(sqrt(23)*pi*x);

func_der = @(x) sqrt(17) * pi * cos(sqrt(17) * pi * x) -  sqrt(23) * pi * sin(sqrt(23) * pi * x);

func_der_der = @(x) -17 * pi^2 * cos(sqrt(17) * pi * x) - 23 * pi * sin(sqrt(23) * pi * x);

m=10;

x_nodes=ceb_node1(m,-1,3);
x_nodes=sort(x_nodes);

x = x_nodes;
f1 = func(x_nodes);
fd1 = func_der(x_nodes([1,end]));
fd2 = func_der_der(x_nodes([1,end]));

X = linspace(-1, 3, 500)';

[a1,b1,c1,d1]=Splinecubic(x,f1,0,fd1);
[a2,b2,c2,d2]=Splinecubic(x,f1,1,fd2);
[a3,b3,c3,d3]=Splinecubic(x,f1,2,[0,0]);
[a4,b4,c4,d4]=Splinecubic(x,f1,3,[0,0]);
z1=valspline(x,a1,b1,c1,d1,X);
z2=valspline(x,a2,b2,c2,d2,X);
z3=valspline(x,a3,b3,c3,d3,X);
z4=valspline(x,a4,b4,c4,d4,X);
plot(X,Y,X,z1,X,z2,X,z3,X,z4, x_nodes, f1, 'o');
legend('functia','spline complet','spline cu deriv. secunde',...
    'spline natural', 'spline de Boor', 'nodurile','location','bestoutside')