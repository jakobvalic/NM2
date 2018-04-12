B = [10 3 -1 0 0 ;
     -3 10 3 -1 0;
     1 -3 10 3 -1;
     0 1 -3 10 3;
     0 0 1 -3 10]
 
 Z = zeros(5)
 
% AAA = kron(eye(5), B)
 
 A = [B Z Z Z Z;
      Z B Z Z Z;
      Z Z B Z Z;
      Z Z Z B Z;
      Z Z Z Z B]
  
  b = zeros(25, 1);
  for i = 1:25
      b(i) = i;
  end
  
  x_0 = ones(25, 1)
  
  eksaktna = A\b
    
  star_pribl = x_0
  razlika = norm(x_0 - eksaktna)
  
  r = 0
  
  while razlika > 1e-10
      nov_pribl = zeros(25, 1)
      for i = 1 : 25
          vsota = 0; 
          for j = 1 : 25
              if j ~= i 
                  vsota = vsota + A(i, j) * star_pribl(j);
              end
          end
          nov_pribl(i) = (b(i) - vsota) / A(i, i);
      end
      razlika = norm(nov_pribl - eksaktna)
      star_pribl = nov_pribl
      r = r + 1
  end
  
  
  
 
  
     