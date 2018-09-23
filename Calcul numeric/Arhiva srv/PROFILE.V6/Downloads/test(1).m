func = @(x) sin(sqrt(71) * pi * x) + cos(sqrt(31) * pi * x);
func(3)

m = 15;

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

plot(X, Y, X, Y_H, x_nodes, func(x_nodes), 'o');

% complete spline
