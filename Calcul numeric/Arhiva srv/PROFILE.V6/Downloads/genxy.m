function [xs,ys] = genxy( m )
  f = @(x) sin(sqrt(71)*pi*x)+cos(sqrt(31)*pi*x);
  xs = cos( linspace(0,m+1,m+1).*pi./m);
  sort(xs);
  ys = arrayfun(f,xs);
end
