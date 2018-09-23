f=@(h) (exp(h)-1)./h;
h=10.^(-15:0);
erf= @(h) abs((exp(h)-1)./h-1);
loglog(h,erf(h));
figure
h2=2.^-1*(10:54);
loglog(h2,erf(h2));