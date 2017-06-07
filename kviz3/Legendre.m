% 2. naloga: Legendrovi polinomi

format long

x = -1:1/100:1;
% x = linspace(-1, 1, 200)
f = @(x) exp(1).^(-x.*(x+1).^2);

plot(x, f(x))

% Z Mathematico izraèunamo koeficiente Legendrovih polinomov.
l0 = [0 0 0 0 0 1];
l1 = [0 0 0 0 1 0];
l2 = [0 0 0 3/2 0 -1/2];
l3 = [0 0 5/2 0 -3/2 0];
l4 = [0 35/8 0 -15/4 0 3/8];
l5 = [63/8 0 -35/4 0 15/8 0];

p0 = @(x) (1);
p1 = @(x) (x);
p2 = @(x) (-1/2 + (3*x.^2)/2);
p3 = @(x) (-((3*x)/2) + (5*x.^3)/2);
p4 = @(x) (3/8 - (15.*x.^2)/4 + (35.*x.^4)/8);
p5 = @(x) ((15.*x)/8 - (35.*x.^3)/4 + (63.*x.^5)/8);

A = [l0 l1 l2 l3 l4 l5];


baza = {p0, p1, p2, p3, p4, p5};

% Ker so bazni polinomi ortonormirani, je G kar identiteta
quad(@(x)p3(x).*p5(x), -1, 1, 1e-12)


b = zeros(1, length(baza));

% Izraèunamo skalarni produkt med funkcijo f(x) in baznimi vektorji,
% ki smo jih shranili v celico "baza"

for i = 1: length(baza)
    g = baza{i};
    produkt = quad(@(x)f(x).*g(x), -1, 1, 1e-12);
    b(i) = produkt;
end

G = eye(6);
for i = 1:length(baza)
    g = baza{i};
    quad(@(x)f(x).*g(x), -1, 1, 1e-12);
end

% Preverimo še, ali smo dobili enake rešitve kot z vgrajeno metodo
% A\b'
b


% Iz koeficientov v matriki b razberemo polinom p
p = @(x) (b(1) + b(2).*x + b(3).*x.^2 +  b(4).*x.^3 + b(5).*x.^4 + b(6).*x.^5);



hold on
plot(x, p(x), 'r')
% ylim([-1 1])

razlika = @(x) (f(x) - p(x));

razlika(0)

norma = norm(razlika([-0.4 0.8]), 2);

% quad(@(x)p1(x).*p1(x), -1, 1, 1e-12)