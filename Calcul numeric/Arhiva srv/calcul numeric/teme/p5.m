function e=p5(n)
err=1e-10;
while abs(MyE(n+1)-MyE(n))/MyE(n+1)>err
    n=n+1;
end
n
e=MyE(n);
end



