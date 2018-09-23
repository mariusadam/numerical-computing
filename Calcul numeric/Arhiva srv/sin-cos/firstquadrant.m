function [y,c]=firstquadrant(rad)
  
pkg load mapping;
xreduced = wrapTo2Pi(rad);
c=1;

if (xreduced >= pi/2 && xreduced <= pi)
  xreduced = pi - xreduced;
  c=2;
elseif (xreduced > pi && xreduced < 3*pi/2  )
  xreduced = xreduced - pi;
  c=3;
elseif (xreduced >= 3*pi/2 && xreduced < 2*pi)
  xreduced = 2*pi - xreduced;
  c=4;
end 

y=xreduced;