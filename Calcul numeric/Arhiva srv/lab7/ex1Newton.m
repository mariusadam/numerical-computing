x=-2:3;
y=tanh(x);
td=difdiv(x,y);
t=linspace(-2,3,200);
v1=pNewton(td,x,2/3);
v2=pNewton(td,x,t);
plot(x,y,'o',t,v2,t,tanh(t));
