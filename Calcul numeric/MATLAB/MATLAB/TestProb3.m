n = 500;
iters = 3000;
err = 1e-13;

A=generateA(n);
b=generateB(n);

[x1, n1] = Jacobi(A, b, b, err, iters);

[x2, n2] = relax(A, b, 1.0435, b, err, iters);

sol = ones(n, 1);

x1
x2

n1
n2

err_1 = norm(x1 - sol) / norm(sol)
err_2 = norm(x2 - sol) / norm(sol)
