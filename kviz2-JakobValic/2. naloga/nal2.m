% 2. naloga

format long

parameter2 = 1 + 62/101;

% Najprej si pridobimo seznam testnih toèk
h = 0.5;
tocke = [-0.5; 0; 0.5]

f = @(x) exp(1)^(-3*parameter2*x)*sin(2*x);


% Približek za prvi odvod v toèki 0. Ker je toèka 0 druga toèka v seznamu
% toèk, nastavimo j na 2.
j = 2
priblizekPrvi = f(tocke(j+1))-f(tocke(j-1))/(2*h)

% Približek za drugi odvod v toèki 0
priblizekDrugi = (f(tocke(j-1))-2*f(tocke(j))+f(tocke(j+1)))/(h^2)