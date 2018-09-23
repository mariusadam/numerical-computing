format short g
for n=10:15
   disp([n, cond(hilb(n))]) 
end

format long 
m=10;
A=hilb(m);
b=A*ones(m,1);
x=A\b

invhilb(m)*b