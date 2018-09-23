format long
n=10;
A=hilb(n);
b=A*ones(n,1);
x=A\b

invhilb(n)*b