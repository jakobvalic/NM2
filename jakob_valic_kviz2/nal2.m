% naloga 2

seme = 21; rand('seed', seme); b = rand(1);

A = (1-b)*magic(5) + 1i*b*magic(5);



A1 = real(A)
A2 = imag(A)

B = [A1 -A2; 
     A2  A1]
 
% frubeniusova norma matrike B
frubeniusova = norm(B, 'fro')
 
[L U P] = lu(B)

% neskonèna norma matrike LPU
neskoncna = norm(L*P*U, Inf)








