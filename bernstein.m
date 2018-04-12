function y = bernstein(n, i, x)

y = nchoosek(n, i)*x.^i.*(1-x).^(n-i);

end