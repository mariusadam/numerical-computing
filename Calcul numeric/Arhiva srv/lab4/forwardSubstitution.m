function x=forwardSubstitution(L, b)
    n=length(b);
    x=zeros(n,1);
    for k=2:n
       x(k)=(b(k) - L(k,1:k-1)*x(1:k-1))/L(k,k); 
    end