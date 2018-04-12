function y = bernpoly(f, n, x)

y = zeros(size(x));
for i = 0:n
   y = y + f(i/n) * bernstein(n, i, x);
end

end