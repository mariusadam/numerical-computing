function [A, b] = gen_3_3(n)

    e = ones(n, 1);
    B = [-e, -e, 5 * e, -e, -e];
    d = [-3, -1, 0, 1, 3];

    A = spdiags(B, d, n, n);
    b = ones(n, 1);
    b(1) = 3;
    b(2) = 2;
    b(3) = 2;
    b(n) = 3;
    b(n - 1) = 2;
    b(n - 2) = 2;
    
end
