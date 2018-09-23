[xs,ys]=genxy(10);
[mxs,mys]=genxy(500);
xi=linspace(-1,1,500);
deriv = @(x) sqrt(71)*pi*cos(sqrt(71)*pi*x) - sqrt(31)*pi*sin(sqrt(31)*pi*x);
dys = deriv(xs);
[z,td]=difdivnd(xs,ys,dys);
y2=pNewton(td,z,xi);