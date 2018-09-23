A=[10 7 8 7
    7 5 6 5 
    8 6 10 9 
    7 5 9 10];

b=[32,23,33,31]';


b1=[32.1, 22.9, 33.1, 30.9]';

A1=[10 7 8.1 7.2 
    7.8 5.04 6 5
    8 5.98 9.89 9
    6.99 4.99 9 9.98];

x=A\b;
x1=A\b1;
x2=A1\b;
errI1=norm(b1-b)/norm(b);
errO1=norm(x1-x)/norm(x);
c1=errO1/errI1

errI2=norm(A1-A)/norm(A);
errO2=norm(x2-x)/norm(x);
c2=errO2/errI2