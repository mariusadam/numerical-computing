n=271;
A=rand(n);
xe=(1:n)';
b=A*xe;
[L,U,P]=lup(A);
y=forwardsubst(L,P*b);
x=backsubst(U,y);
er=norm(x-xe)/norm(x)