A = [10  7  8   7
7  5  6   5
8  6  10  9
7  5  9  10];


b = [32,23,33,31]';

bp = [32.1,  22.9,  33.1,  30.9]';

A1 =[10    7   8.1   7.2
7.8  5.04   6 5
8   5.98  9.89   9
6.99  4.99   9   9.98];

x = A\b;
x1 = A\bp;
x2 = A1 \ b;
erI1=norm(bp-b)/norm(b);
erO1=norm(x1-x)/norm(x);
c=erO1/erI1

erI2=norm(A1-A)/norm(A);
erO2=norm(x2-x)/norm(x);
c2=erO2/erI2

