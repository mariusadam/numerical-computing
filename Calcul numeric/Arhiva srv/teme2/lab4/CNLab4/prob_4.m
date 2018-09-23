function R = prob_4(A)
  n=10
  A=round(normrnd(10, 5, n,n));

  A=A+A'
  A=A+100*eye(n)

  b = A*ones(n, 1);
  x=A\b
   
  [m,n] = size(A);
  
 
  for k=1:m
    
    if (A(k,k) <= 0)
    
      error("Matrix is not HPD!");
    
    end
  
    for j=k+1:m
      
      A(j,j:m) = A(j,j:m)-A(k,j:m)*A(k,j)/A(k,k);
      
    end
    
    A(k,k:m) = A(k,k:m)/sqrt(A(k,k));
    
    end
  
  R = triu(A);

end