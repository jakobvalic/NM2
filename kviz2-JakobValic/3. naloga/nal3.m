% 3. naloga
format long

parameter3 = 7+90/101;


f = @(x) (cos(parameter3 * x) / (x^2 + 1)) + 1;

a = 0;
tocke = a
for i=1:6
    tocke = [tocke; a + (b - a)/6*i];
end

% Sestavljeno Simpsonovo pravilo v treh podintervalih (7 delilnih toèk)
priblSestavljeni = (b - a) / 18 * (f(tocke(1)) + 4*f(tocke(2)) + 2*f(tocke(3)) + 4*f(tocke(4)) + 2*f(tocke(5)) + 4*f(tocke(6)) + f(tocke(7)))

% Adaptivno Simpsonovo pravilo
priblAdaptivni = rekurzivniSimpson(0, 2, f, 0.01)
