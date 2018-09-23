function x=Gausselim2(A,b)
%GAUSSELIM2 - eliminare gaussiana cu pivot scalat pe coloana
%apel x=Gausselim2(A,b)
%A -matricea, b- vectorul termenilor liberi

[l,n]=size(A);
x=zeros(size(b));
s=sum(abs(A'))';
A=[A,b]; %matricea extinsa
%Eliminare
for i=1:n-1
    [u,p]=max(abs(A(i:n,i))./s(i:n)); %pivotare
    p=p+i-1;
    if u==0, error('nu exista solutie unica'), end
    if p~=i %interschimbare linii
        A([i,p],i:n+1)=A([p,i],i:n+1); 
    end
    for j=i+1:n
        m=A(j,i)/A(i,i);
        A(j,i+1:n+1)=A(j,i+1:n+1)-m*A(i,i+1:n+1);
    end
end
%substitutie inversa
x(n)=A(n,n+1)/A(n,n);
for i=n-1:-1:1
    x(i)=(A(i,n+1)-A(i,i+1:n)*x(i+1:n))/A(i,i);
end
