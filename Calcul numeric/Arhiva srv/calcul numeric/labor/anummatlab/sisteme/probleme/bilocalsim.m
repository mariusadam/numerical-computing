function [x,y]=bilocalsim(p,q,r,a,b,alfa,beta,N)
%BILOCALSIM - problema bilocala --metoda simetrica
%y''(x)-p(x)y'(x)-q(x)y(x)=r(x), x in [a,b]
%y(a)=alfa, y(b)=beta
%apel y=bilocal(p,q,r,a,b,alfa,beta,N)
%p,q,r - functii
%[a,b] - intervalul
%alfa,bet - valori in capete
%N - nr. de puncte
%matricea se transforma intr-una simetrica, poz. definita

h=(b-a)/(N+1); x=a+[1:N]'*h;
vp=p(x); vr=r(x); vq=q(x);
av=1+h^2/2*vq;
bv=1/2*(1+h/2*vp);
cv=1/2*(1-h/2*vp);
dd=-sqrt(cv(1:end-1).*bv(2:end));
B=[[dd;0],av,[0;dd]];
A=spdiags(B,[-1:1],N,N);
bb=-h^2/2*vr; 
bb(1)=bb(1)+(1/2+h/4*vp(1))*alfa;
bb(N)=bb(N)+(1/2-h/4*vp(N))*beta;
%metoda Cholesky
R=chol(A);
D=diag(sqrt(cumprod([1;cv(1:end-1)./bv(2:end)])));
y=D\(R\(R'\(D*bb)));
x=[a;x;b];
y=[alfa;y;beta];