function [L,U,P] = lup(A)
    [m,n]=size(A);
    piv=1:n;
    for k=1:n-1
       %pivotare start
       [vp, p]=max(abs(A(k:n,k)));
       if vp == 0
           error('pivot nul');
       end
       A([k,p], :)=A([p,k],:);
       piv([k,p])=piv([p,k]);
       %pivotare end
       
       A(k+1, k+1:n)=A(k+1:n, k)/A(k,k);
       A(k+1,k+1:n)=A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);
    end
    U=triu(A,0);
    L=tril(A,-1)+eye(n);
    for k=1:n
       P(k,piv(k))=1; 
    end