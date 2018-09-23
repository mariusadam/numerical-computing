function [rez,N] = Mysin(x,err)
x=mod(x,2*pi);
i=1;
t=x;
S=x;
while abs(t) >= err
    t= t *(-1)*x^2/(2*i)/(2*i+1);
    S=S+t;
    i=i+1;
end
rez=S;
N=i-1;
end