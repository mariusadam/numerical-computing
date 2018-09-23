tay=@(x)-x.^2+(2/3)*x.^4-(14/45)*x.^6+(37/315).*x.^8-(176/4725)*x.^10+(1622/155925)*x.^12;
func_aprox=@(x)x.^2./tay(x)
X=linspace(-1e-7,1e-7, 1000)
plot(X, func_aprox(X))