function b=myrealmax()
    b=2-eps;
    while ~isinf(b)
        aux = b;
        b = 2*b;
    end
    b = aux;