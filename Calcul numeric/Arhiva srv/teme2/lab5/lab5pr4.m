function A = generateSPDmatrix(n)


A = rand(n,n); 


A = 0.5*(A+A'); 

A = A + n*eye(n);

b=[4;ones(n-2,1)*rand;4]

x0=A\b
x1=rezolvaGaussSeidel(A,b,1e-5)
x2=rezolvaJacobi(A,b,1e-5)
x3=rezolvaSOR(A,b,0.5,1e-5)
end