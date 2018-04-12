% 2. naloga: Legendrovi polinomi

seme = 6; rand('seed', seme); b = 2 + rand(1);

% Najprej definiramo funkcijo f, ki jo bomo aproksimirali.
f = @(x) exp(1).^(b-x.^2);

format long

% Z Mathematico izraèunamo koeficiente Legendrovih polinomov.
l0 = [0 0 0 1]';
l1 = [0 0 1 0]';
l2 = [0 3/2 0 -1/2]';
l3 = [5/2 0 -3/2 0]';


% Bazne vektorje zložimo v matriko kot stolpce.
A = [l0 l1 l2 l3];

n = 4;

% Ustvarimo Grammovo matriko G. Izkaže se, da G ni identiteta. 
% Popraviti moramo diagonalne elemente.
b = zeros(1, n);
G = zeros(n);
for i = 1:n
    for j = 1:n
        G(i, j) = quad(@(x)polyval(A(:, i),x).*polyval(A(:, j),x), -1, 1, 1e-12);
    end
    % Raèunamo skalarne produkte i-tega baznega vektorja s funkcijo
    b(i) = quad(@(x)polyval(A(:,i),x).*f(x),-1,1,1e-12);
end


% Z vgrajenim ukazom rešimo enaèbo G*x=b.
x = G\b';

% Iz koeficientov v matriki x razberemo polinom p. Razvijemo ga po bazi
% Legendrovih polinomov.

l = zeros(1, n);
for i = 1:n
    l = l + x(i).*A(:,i)';
end


p = @(x) polyval(l, x);

razlika = @(x) (f(x) - p(x));



% Druga norma razlike je koren od <razlika, razlika>.
rezultat = sqrt(quad(@(x)(f(x)-p(x)).*(f(x)-p(x)), -1, 1, 1e-12))

% Vrednost <f, p2>
% Koeficienti p2 so zapisani v 3. stolpcu matrike A
skalarni = quad(@(x)f(x).*polyval(A(:, 3),x), -1, 1, 1e-12)





