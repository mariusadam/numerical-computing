function wilson()
clc;
A= [10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10]
b =[32;23;33;31];
sprintf('x=A/b')
x=A\b
sprintf('a)')
bp=[32.1;22.9;33.1;30.9]
sprintf('x=A/b2')
xp1=A\bp
y1 = norm(bp-b)/norm(b)
y2 = norm(xp1-x)/norm(x)
c=y2/y1
if c<=1
    sprintf('bine conditionata')
else
    sprintf('prost conditionata')
end
sprintf('b)')
Ap=[10 7 8.1 7.2;7.8 5.04 6 5;8 5.98 9.89 9;6.99 4.99 9 9.98]
sprintf('x=A2/b')
xp2=Ap\b
y1 = norm(Ap-A)/norm(A)
y2 = norm(xp2-x)/norm(x)
c2=y2/y1
if c2<=1
    sprintf('bine conditionata')
else
    sprintf('prost conditionata')
end
end

