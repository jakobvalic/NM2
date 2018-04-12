format long;

f = @(x) sin(5*x);
x = linspace(0,1);

N = 10;
clf
hold on
for n = 2:2:N
    plot(x, kantorovic(f, n, x));
end
plot(x,f(x),'r')
hold off

% Kakšna je vrednost K_{4}f(1/2)?
kantorovic(f,4,1/2)

% Kakšna je povpreèna razlika med B_{4}f in K_{4}f
skupna_razlika = 0;
for i = 0:100
    x = i/100;
    skupna_razlika = skupna_razlika + abs(bernpoly(f,4,x) - kantorovic(f,4,x));
end

povprecna_razlika = skupna_razlika / (i+1)

% Katera je najmanjša stopnja n, pri kateri velja |f - K_{n}|_{inf, x} <
% 0.1 ?
for n = 1:100
    x = linspace(0,1);
    norm(f(x)-kantorovic(f,n,x), Inf);
    if norm(f(x)-kantorovic(f,n,x), Inf) < 0.1
        break
    end        
end
n