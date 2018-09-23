f=@(x)x.^2./(cos(sin(x)).^2-1);
X=linspace(-1e-7,1e-7, 1000);
Y=f(X);
plot(X, Y)


