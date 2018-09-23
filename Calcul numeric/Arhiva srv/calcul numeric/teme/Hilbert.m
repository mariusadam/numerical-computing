function Hibert(n)
clc;
A=zeros(n);
i=1;
j=1;
for i=1:n 
    for j=1:n 
        A(i,j)= 1/(i+j-1);
    end
end
A
cond(A,1)
end

