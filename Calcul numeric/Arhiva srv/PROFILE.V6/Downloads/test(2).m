func = @(x) sin(sqrt(71) * pi * x) + cos(sqrt(31) * pi * x);
func(3)

m = 30;

% plot
X = linspace(-1, 1, 500)';
Y = func(X);

% generate nodes
ceb_node = @(k, m) cos((k * pi) / m);
nodes = zeros(m + 1, 1);
x_nodes = zeros(m + 1, 1);
for i=1:m
    x_nodes(m-i+1) = ceb_node(i, m);
end
x_nodes(m + 1) = 1;

% lagrange baricentric
L_Y = lagr(x_nodes, func(x_nodes), X);

%plot(X, Y, X, L_Y)

func_der = @(x) sqrt(71) * pi * cos(sqrt(71) * pi * x) -  sqrt(31) * pi * sin(sqrt(31) * pi * x);

% hermitian
[Z,TD] = difdivnd(x_nodes, func(x_nodes), func_der(x_nodes));

Y_H = pNewton(TD,Z,X);

%plot(X, Y, X, Y_H, x_nodes, func(x_nodes), 'o');

% splines

func_der_der = @(x) -71 * pi^2 * cos(sqrt(71) * pi * x) - 31 * pi * sin(sqrt(31) * pi * x);

x = x_nodes;
f1 = func(x_nodes);
fd1 = func_der(x_nodes);
fd2 = func_der_der(x_nodes);

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
    'spline natural', 'spline de Boor', 'nodurile')
