% naloga 2

A = fliplr(magic(5)) + 1i * flipud(magic(5));
b = (0 : 2 : 8)' + 1i * (1 : 2 : 9)';

A1 = real(A)
A2 = imag(A)

b1 = real(b)
b2 = imag(b)

B = [A1 -A2; 
     A2  A1]
 
c = [b1; b2]


[L U P] = lu(B)

% sedaj velja P*A = L*U, torej A = P^-1*L*U
% vpeljemo
% 
% 

n = P*c
m = L\n
y = U\m

eksaktna = A\b % deluje in je pravilno :)








