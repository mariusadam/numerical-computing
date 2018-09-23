function p4( x )
clc;
t=num2hex(x);
bblock='';
f='';
s='';
s1='';
for i = 1:16
    s = strcat(s,sprintf('%5s',getBin(t(i))));
    s1= strcat(s1,getBin(t(i)));
    f = strcat(f,sprintf('%5s',t(i)));
    bblock = strcat(bblock,sprintf('%5i',i));
end
sprintf('Numarul = %f\n%s - numar bloc \n%s - reprezentare hex \n%s - reprezentare binar\n\nReprezentare interna:\nSemn: %s\nExponent: %s\nSemnificant: %s',x,bblock,f,s,s1(1:1),s1(2:12),s1(12:end))

end

function S = getBin(x)
    if x == '0' 
        S='0000';
    elseif x == '1'
        S='0001';
    elseif x == '2'
        S='0010';
    elseif x == '3'
        S='0011';
    elseif x == '4'
        S='0100';
    elseif x == '5'
        S='0101';
    elseif x == '6'
        S='0110';
    elseif x == '7'
        S='0111';
    elseif x == '8'
        S='1000';
    elseif x == '9'
        S='1001';
    elseif x == 'a'
        S='1010';
    elseif x == 'b'
        S='1011';
    elseif x == 'c'
        S='1100';
    elseif x == 'd'
        S='1101';
    elseif x == 'e'
        S='1110';
    elseif x == 'f'
        S='1111';
    end

end