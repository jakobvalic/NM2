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

n = L\c
m = U\n
y = P\m

y


