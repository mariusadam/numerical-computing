function y = taylorcos(x,err)
S = 0;
[xreduced,q] = firstquadrant(x);
t = 1;
n = 0;
while abs(t) >= err
    S = S + t;
    n = n + 1;
    t = ((-1)^n)*((xreduced^(2*n)) / factorial(2*n));
end
if (q==2 || q==3)
  y = -S;
else 
  y=S;
end