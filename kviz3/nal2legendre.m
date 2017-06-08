% 2. naloga: Legendrovi polinomi

format long

% Z Mathematico izraèunamo koeficiente Legendrovih polinomov.
l0 = [0 0 0 0 0 1]';
l1 = [0 0 0 0 1 0]';
l2 = [0 0 0 3/2 0 -1/2]';
l3 = [0 0 5/2 0 -3/2 0]';
l4 = [0 35/8 0 -15/4 0 3/8]';
l5 = [63/8 0 -35/4 0 15/8 0]';

% Bazne vektorje zložimo v matriko kot stolpce.
A = [l0 l1 l2 l3 l4 l5];

n = 6;

% Ustvarimo Grammovo matriko G. Izkaže se, da G ni identiteta. 
% Popraviti moramo diagonalne elemente.
b = zeros(1, n);
G = zeros(n);
for i = 1:n
    for j = 1:n
        G(i, j) = quad(@(x)polyval(A(:, i),x).*polyval(A(:, j),x), -1, 1, 1e-12);
    end
    % Raèunamo skalarne produkte i-tega baznega vektorja s funkcijo
    b(i) = quad(@(x)polyval(A(:,i),x).* f(x),-1,1,1e-12);
end


% Z vgrajenim ukazom rešimo enaèbo G*x=b.
x = G\b';

% Iz koeficientov v matriki x razberemo polinom p. Razvijemo ga po bazi
% Legendrovih polinomov.

l = zeros(1, 6);
for i = 1:6
    l = l + x(i).*A(:,i)';
end


p = @(x) polyval(l, x);

razlika = @(x) (f(x) - p(x));


% Druga norma razlike je koren od <razlika, razlika>.
rezultat = sqrt(quad(@(x)(f(x)-p(x)).*(f(x)-p(x)), -1, 1, 1e-12));


% Funkciji še narišemo
X = linspace(-1, 1, 1000);
f = @(x) exp(1).^(-x.*(x+1).^2);

plot(X, f(X), 'r')
hold on
plot(X, p(X), 'b')

% Vidimo lahko, da se funkciji lepo prilegata.

