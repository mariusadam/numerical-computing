%f(x)=sin(sqrt(17)*pi*x)+cos(sqrt(25)*pi*x)
%x apartine [-1,3]
%11 noduri Cebisev #1
% (a) f, Lmf (metoda Baricentrica- Barry)
% (b) f, H2m+1f
% (c) f, S3f (spline cubic) complet, cu derivate secunde, natural, de Bronn

func=@(x) sin(sqrt(17)*pi*x)+cos(sqrt(23)*pi*x);

m = 10;

% plot
X = linspace(-1, 3, 500)';
Y = func(X);

% generate nodes
x_nodes=ceb_node1(m,-1,3);

% lagrange baricentric
L_Y = baryLagrange(x_nodes, func(x_nodes), X);

%plot(X, Y, X, L_Y,x_nodes,func(x_nodes),'*')

func_der = @(x) sqrt(17) * pi * cos(sqrt(17) * pi * x) -  sqrt(23) * pi * sin(sqrt(23) * pi * x);

% hermitian
[Z,TD] = difdivnd(x_nodes, func(x_nodes), func_der(x_nodes));

Y_H = pNewton(TD,Z,X);

plot(X, Y, X, Y_H, x_nodes, func(x_nodes), 'o');




