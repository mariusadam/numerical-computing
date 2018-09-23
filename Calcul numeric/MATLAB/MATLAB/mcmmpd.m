function c=mcmmpd(x,y,n)
    m=length(x);
    B=ones(n,n+1);
    for k=n:-1:1
        B(:,n-k+1)=x.^k;
    end
    c=B\y;