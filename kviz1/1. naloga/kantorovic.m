function y = kantorovic(f, n, x)


y = zeros(size(x));
for i = 0:n
   bernstein_bazni = nchoosek(n, i)*x.^i.*(1-x).^(n-i);
   y = y + (n + 1) * integral(f, i./(n+1), (i+1)./(n+1)) * bernstein_bazni;
end

end