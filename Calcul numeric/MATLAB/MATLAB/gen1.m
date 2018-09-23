function [A,b]=gen1(n)
   
A=5*eye(n)-diag(ones(n-1,1),1)-diag(ones(n-1,1),-1);
b=A*ones(n,1);
