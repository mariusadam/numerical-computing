function b=generateB(n)

    for i=1:n
        b(i)=1.5;
        if (i==1 || i==n)
            b(i)=2.5;
        end
        if(i==n/2 || i==n/2+1)
            b(i)=1.0;
        end
    end
    b=b';
end