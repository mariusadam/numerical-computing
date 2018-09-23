%f(x) = sin(sqrt(17)&pi*x)+cos(sqrt(23)*pi*x)
%x apartine [-1, 3]
%11 noduri Cebisev #1
%f, Lmf (metoda baricentrica)
%f, H2m+1f
%f, S3f (spline cubic) complet, cu derivate secunde, natural, de Bronn

f = @(x) sin(sqrt(17) * pi * x) + cos(sqrt(23) * pi * x);

m = 10;

% generare noduri
X = linspace(-1, 3, 500)';
Y = f(X);
x=ceb_nodes1(m,-1,3);
nodes = zeros(m + 1, 1);


% lagrange baricentric
L_Y = baryLagrange(x, f(x), X);

%plot(X,Y, X, L_Y, x, f(x), 'o')

f_der = @(x) sqrt(17) * pi * cos(x * sqrt(17) * pi) -  sqrt(23) * pi * sin(x * sqrt(23) * pi);

%hermitian
[Z,TD] = difdivnd(x, f(x), f_der(x));

Y_H = pNewton(TD,Z,X);

plot(X, Y, X, Y_H, x, f(x), 'o');





