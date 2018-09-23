n=1e5;
[A,b]=generate(n);
x0=zeros(n,1);
err = 1e-10;
nitmax = 1000;
[x,ni]=Jacobi(A,b,x0,err,nitmax)

omega=1.28;
[x2,ni]=relax(A,b,omega,x0,err,nitmax)