function E=recdir(n)
E=exp(-1);
for k=2:n
    E=1-k*E;
end
end