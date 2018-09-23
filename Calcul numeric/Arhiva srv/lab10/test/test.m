f = @(x) sin(sqrt(17) * pi * x) + cos(sqrt(23) * pi * x);

m = 10;

% generare noduri
X = linspace(-1, 3, 500)';
Y = f(X);
x=ceb_nodes1(m,-1,3);
nodes = zeros(m + 1, 1);

%spline
f_der = @(x) sqrt(17) * pi * cos(x * sqrt(17) * pi) -  sqrt(23) * pi * sin(x * sqrt(23) * pi);
f_der_der = @(x) -17 * pi^2 * cos(sqrt(17) * pi * x) - 23 * pi * sin(sqrt(23) * pi * x);

y = x;
f1 = f(x);
fd1 = f_der(x);
fd2 = f_der_der(x);

[a1,b1,c1,d1]=Splinecubic(y,f1,0,fd1);
[a2,b2,c2,d2]=Splinecubic(y,f1,1,fd2);
[a3,b3,c3,d3]=Splinecubic(y,f1,2,[0,0]);
[a4,b4,c4,d4]=Splinecubic(y,f1,3,[0,0]);
z1=valspline(y,a1,b1,c1,d1,X);
z2=valspline(y,a2,b2,c2,d2,X);
z3=valspline(y,a3,b3,c3,d3,X);
z4=valspline(y,a4,b4,c4,d4,X);
plot(X,Y,X,z1,X,z2,X,z3,X,z4, x_nodes, f1, 'o');
legend('functia','spline complet','spline cu deriv. secunde',...
    'spline natural', 'spline de Boor', 'nodurile')
