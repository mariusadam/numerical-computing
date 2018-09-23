%sqrt(x) 0..1

format long
%f=@(x)exp(x.^2)
%f=@(x)sin(x.^2)./(sqrt(1-(x.^2)))
%f=@(x)sqrt(1-x.^2).*cos(x)
%f=@(x)cos(x)
%f=@(x)exp(-x.^2).*sin(x)
%f=@(x)sqrt((1-x)./(1+x)).*((x+1)./(1+x.^4))
%f=@(x)exp(-x).*cos(x)
f=@(x)exp(-x.^2).*cos(x)
%f=@(x)sin(x)
%f=@(x)cos(x)
%f=@(x)exp(-(x-2)).*(1./(1+x.^2))

%integral(f,0,inf)
[a,b]=Gauss_Hermite(15);
vi2=vquad(a,b,f)
%adquad(f,-1,1,1e-8)