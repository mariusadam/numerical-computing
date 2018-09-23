f=@(x) 1./(1+25*x.^2);
m=50;
k=0:m;
x=sort(cos(k*pi/m));
y=f(x);
t=linspace(-1,1,10000);
td=difdiv(x,y);
vpi=pNewton(td,x,t);
plot(x,y,'o',t,vpi,t,f(t));

%facultativ ordine leja pentru un punct 