function [A,b]=fun1(n)
    %pt matrice densa 
    tic
    A=5*eye(n)-diag(ones(n-1,1),1)-diag(ones(n-1,1),-1);
    b=A*ones(n,1)
    toc
end
    