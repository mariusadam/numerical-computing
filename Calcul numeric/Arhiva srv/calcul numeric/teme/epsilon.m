function eps=epsilon()
x=1;
while 1 + x ~= 1
    x = x/2;
end
eps = x*2;
end

