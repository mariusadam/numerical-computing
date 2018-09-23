function y=firstquadrant(rad)
  
pkg load mapping;
xreduced = wrapTo2Pi(rad);

if (xreduced >= pi/2 && xreduced <= pi)
  xreduced = pi - xreduced;
elseif (xreduced > pi/2 && xreduced < 3*pi/2  )
  xreduced = xreduced - pi;
elseif (xreduced >= 3*pi/2 && xreduced < 2*pi)
  xreduced = 2*pi - xreduced;
endif 
endif

y=xreduced;