function c=mcmmpd(x,y,n)
    m=length(x);
    B=ones(m,n+1);
    x=x(:);
    y=y(:);
    for k=n:-1:1
        B(:,n-k+1)=x.^k;
    end
    c=B\y;
end