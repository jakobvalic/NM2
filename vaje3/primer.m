% primer
X = linspace(0,1,5);
Y = sin(2*pi*X);
x = linspace(0,1);
plot(x,linzlepek(X,Y,x))
f = @(x) sin(2*pi*x);
X = linspace(0,1,2223);
Y = f(X);
x = linspace(0,1,1e6);
zx = linzlepek(X,Y,x);
max(abs(f(x) - zx))