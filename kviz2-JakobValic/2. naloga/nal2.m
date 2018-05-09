% 2. naloga

format long

parameter2 = 1 + 62/101;

% Najprej si pridobimo seznam testnih to�k
h = 0.5;
tocke = [-0.5; 0; 0.5]

f = @(x) exp(1)^(-3*parameter2*x)*sin(2*x);


% Pribli�ek za prvi odvod v to�ki 0. Ker je to�ka 0 druga to�ka v seznamu
% to�k, nastavimo j na 2.
j = 2
priblizekPrvi = f(tocke(j+1))-f(tocke(j-1))/(2*h)

% Pribli�ek za drugi odvod v to�ki 0
priblizekDrugi = (f(tocke(j-1))-2*f(tocke(j))+f(tocke(j+1)))/(h^2)