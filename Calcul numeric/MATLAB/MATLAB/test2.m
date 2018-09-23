f=@(x)x.^2./(cos(sin(x)).^2-1);
%X=linspace(-1e-7,1e-7, 1000);
X=linspace(-1,1,1000);
Y=f(X);
plot(X, Y)

taylor=@(x)-x.^2+(2/3)*x.^4-(14/45)*x.^6+(37/315).*x.^8-(176/4725)*x.^10+(1622/155925)*x.^12;
func_aprox=@(x)x.^2./taylor(x)
plot(X, func_aprox(X), X, f(X))
