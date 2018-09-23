function [z,ni]=mas(Phi,x0,ea,ev,Nmax)

    x0=x0(:);
    for k=1:Nmax
        x1=Phi(x0);
        if norm(x1-x0)<ea || norm(x1-x0)<ev*norm(x1)
            z=x1;
            ni=k;
            return
        end
        x0=x1;
    end
    error("prea multe iteratii")
end