function x = sistem(A, b)

% Rešujemo sistem Ax = b, za x
%x = [P1 P2 P3 P4 P5 P6 P7 P8 P9]

A = eye(9);

for i = 2:9
  A(i-1,i) = -2/3 ;
  A(i,i-1) = -1/3;
end  

b = [1/3 0 0 0 0 0 0 0 0]';

x = A \ b;

end