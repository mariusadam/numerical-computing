function[A,b]=gen2(n)
e=ones(n,1);
B=[-e,5*e,-e];
d=[-1,0,1];
A=spdiags(B,d,n,n);
b=A*ones(n,1);