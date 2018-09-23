function E=recinv(n,k)
    E=0;
    for p=n+k:-1:n+1
        E=(1-E)/p;
    end