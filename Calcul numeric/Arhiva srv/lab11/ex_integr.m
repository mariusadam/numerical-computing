f=@(x)exp(x.^2)

format long 
i=integral(f,-1,1)
r=Romberg(f,-1,1,1e-8,7)
s=Simpson(f,-1,1,50)
t=trapez(f,-1,1,30)
a=adquad(f,-1,1,1e-8)