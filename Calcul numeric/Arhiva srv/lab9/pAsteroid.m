x=[-1.024940,-0.949898,-0.866114,-0.773392,-0.671372,-0.559524,-0.437067,-0.302909,-0.159493,-0.007464];
y=[-0.389269,-0.322894,-0.265256,-0.216557,-0.177152,-0.147582,-0.128618,-0.121353,-0.127348,-0.148895];
x=x';
y=y';
close all
A=[y.^2,x.*y,x,y,ones(size(x))];
bv=x.^2;
coef=A\bv;
figure(1);

%Piazzi
plot(x,y,'ro'); hold on
u=linspace(-2,2,40);
v=linspace(-3,0,40);
[X,Y]=meshgrid(u,v);
a=coef(1);b=coef(2);c=coef(3);d=coef(4);e=coef(5);
Z=a*Y.^2+b*X.*Y+c*X+d*Y+e-X.^2;
contour(X,Y,Z,[0,0]);
erel=norm(a*y.^2+b*x.*y+c*x+d*y+e-x.^2)


figure(2)
A2=[y,ones(size(x))];
coef2=A2\bv;
a2=coef2(1);e2=coef2(2);
Z2=a2*Y+e2-X.^2;
erpar=norm(a2*y+e2-x.^2)
plot(x,y,'ro'); hold on
contour(X,Y,Z2,[0,0]);
