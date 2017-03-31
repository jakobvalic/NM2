%tridiagonalne matrike

function[x, l, u] = tridiag(a, b, c, f)

n = length(a);
l = zeros(n - 1, 1)
u = zeros(n, 1)

%LU razcep (3n - 3 operacij)
u(1) = a(1);
for j = 1 : n - 1
    l(j) = c(j) / u(j);
    u(j + 1) = a(j + 1) - l(j) * b(j);
end

%prema substitucija (2n - 2 operacij)
y = zeros(n,1);
y(1) = f(1);
for k = 2:n
    y(k) = f(k) - l(k-1) * y(k-1);
end

%obratna substitucija (3n - 2 operacij)
x = zeros(n, 1);
x(n) = y(n) / u(n);
for k = n-1:-1:1
    x(k) = (y(k) - b(k) * x(k + 1)) / u(k);
end
