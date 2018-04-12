%f = @(x) 1./(1+x);
f = @(x) 1./(1+25*(2*x-1).^2);
x = linspace(0,1);


N = 500;
clf
hold on
for n = 2:2:N
    plot(x, bernpoly(f, n, x));
end
plot(x,f(x),'r')
hold off