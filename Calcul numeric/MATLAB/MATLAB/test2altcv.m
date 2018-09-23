function rez=faceva(x)
if abs(x)<1
    rez=(-2.*x.^4./15)-(2.*x.^2./3)-1;
else
    rez=(x.^2)/(cos(sin(x)).^2-1);
end

f=@(x)x.^2./(cos(sin(x)).^2-1);
X=linspace(-1,1, 1000);
Y=f(X);
plot(X, Y)

tay=@(x)-x.^2+(2/3)*x.^4-(14/45)*x.^6+(37/315).*x.^8-(176/4725)*x.^10+(1622/155925)*x.^12;
func_aprox=@(x)x.^2./tay(x)
plot(X, func_aprox(X), X, f(x))