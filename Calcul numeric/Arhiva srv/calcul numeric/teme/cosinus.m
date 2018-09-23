function [rez,N] = cosinus(x,err)
x=mod(x,2*pi);
i=1;
t=1;
S=1;
while abs(t) >= err
    t= t *(-1)*x^2/(2*i-1)/(2*i);
    S=S+t;
    i=i+1;
end
rez=S;
N=i-1;
end

