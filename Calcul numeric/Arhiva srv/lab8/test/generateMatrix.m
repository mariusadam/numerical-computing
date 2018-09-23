function [A,b]=generateMatrix(n)
    e=ones(n,1);
    B=[-e,3*e,-e];
    A=spdiags(B,-1:1,n,n);
    c=1/2*e;
    c([n/2,n/2+1])=0;
    C=spdiags(c,0,n,n);
    C=fliplr(C);
    A=A+C;
    b=A*ones(n,1);
end