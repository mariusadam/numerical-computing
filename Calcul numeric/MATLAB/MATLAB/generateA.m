function A=generateA(n)
    A=3*eye(n);
    for i=1:n
        A(i,n+1-i)=1/2;
        if(i~=n)
            A(i,i+1)=-1;
        end
        if(i>1)
            A(i,i-1)=-1;
        end
    end
end