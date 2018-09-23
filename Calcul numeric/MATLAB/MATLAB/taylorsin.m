function y = taylorsin(x,err)
S = 0; 
xreduced = - firstquadrant(x);
t = xreduced;
S = S + t;
n = 1;
while abs(t) >= err
    t = ((-1)^n)*((xreduced^(2*n+1)) / factorial(2*n+1));
    S = S + t;
    n = n + 1;
end
y = S;