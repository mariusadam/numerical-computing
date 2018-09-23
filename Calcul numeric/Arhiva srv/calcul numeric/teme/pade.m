function  [a,b] = pade(N);
 global pt;
 disp('-----------------------------------------------------')
 pt = input(' Point you are evaluating Pade coefficients at [rad]: ');
 disp('-----------------------------------------------------');
 r = [];
 c = [];
 temp = [];
 for i=1:(2*N)
   if mod(i,2)==0
     temp(i) = 0;
   else
     k = (i-1)/2;
     temp(i) = power(-1,k)/factorial(i)*cos(pt);
   end
 end
 temp = temp';
 T = toeplitz(temp(N:2*N-1),temp(N:-1:1)');
 C = -temp(N+1:2*N);
 a0 = 0;
 r = [a0;temp(1:N)];
 [L,U] = lu(T); % LU decomposition
 y = L\C;
 bb = U\y;
 b = [1;bb];
 a = [];
 for k=1:N
   s = 0;
   for m=0:k
      s = s + b(m+1)*r(k-m+1);
   end
   a(k) = s;
 end
 a = [a0 a]';
end