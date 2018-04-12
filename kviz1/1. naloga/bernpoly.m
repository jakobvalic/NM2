function y = bernpoly(f, n, x)

y = zeros(size(x));
for i = 0:n
   bernsteinov_bazni = nchoosek(n, i)*x.^i.*(1-x).^(n-i);
   y = y + f(i/n) * bernsteinov_bazni;
end

end