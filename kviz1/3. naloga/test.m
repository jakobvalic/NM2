% 2. naloga

format long

P = [32 0 -48 0 18 0 -1;
    0 16 0 -20 0 5 0;
    0 0 8 0 -8 0 1;
    0 0 0 4 0 -3 0;
    0 0 0 0 2 0 -1;
    0 0 0 0 0 1 0;
    0 0 0 0 0 0 1]

a = zeros(7,1)
for i = 6:-1:0
    a(6-i+1) = 1/factorial(i);
end

b=P\a




