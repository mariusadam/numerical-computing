f = @(x) x.^2./(1-x.^2);

m = 51;

% generare noduri
X = linspace(-1, 1, 2000)';
Y = f(X);
x=ceb_nodes1(m,-1,1);

L_Y = baryLagrange(x, f(x), X);

plot(X,Y, X, L_Y)