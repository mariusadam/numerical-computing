%Sa se genereze un sistem cu matrici aleatoare si sa se rezolve folosind
%descompunera LUP
%Sistem aleator cu matrice simetrica si pozitiv definita cu Cioleski
n=151;
R=triu(rand(n)+eye(n));
A=R'*R;
R2=Cholesky(A);
norm(R2'*R2-A);

X=rand(n);
[L,U,P]=lup(X)
