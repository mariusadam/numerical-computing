function Vandermonde(x)
clc;
n=length(x);
A=zeros(n);
for i=1:n 
    for j=1:n
        i
        j
        A(i,j)=x(i)^(n-j);        
    end
end
A
x= cond(A,2);
x
end

