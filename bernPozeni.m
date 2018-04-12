n = 16;

clf
hold on
x = linspace(0,1);
for i = 0:n
    plot(x, bernstein(n, i, x))
end
hold off