format long

seme = 19; rand('seed', seme); a = 10 + rand(1);

B = [a 0 3 -2;
     0 a 0  3;
     -4 0 a 0;
     1 -4 0 a]
    
 Z = zeros(4)
 
% AAA = kron(eye(5), B)
 
 A = [B Z Z Z Z;
      Z B Z Z Z;
      Z Z B Z Z;
      Z Z Z B Z;
      Z Z Z Z B]
  
  b = [1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0]';
  
  x_0 = zeros(20, 1)
  
  eksaktna = A\b
    
  star_pribl = x_0
  razlika = norm(x_0 - eksaktna, Inf)
  
  r = 0
  
  po_petih = 0
  
  while razlika > 1e-10
      nov_pribl = zeros(20, 1)
      for i = 1 : 20
          vsota = 0; 
          for j = 1 : 20
              if j ~= i 
                  vsota = vsota + A(i, j) * star_pribl(j);
              end
          end
          nov_pribl(i) = (b(i) - vsota) / A(i, i);
      end
      razlika = norm(nov_pribl - eksaktna, Inf)
      star_pribl = nov_pribl
      r = r + 1
      if r == 5 % zanima nas priblizek po petih korakih
          po_petih = norm(nov_pribl)
      end
  end
  
  
  
 
  
     