% Za 3. nalogo

function rezultat = rekurzivniSimpson(a, b, f, toleranca)

c = (a + b) / 2;
d = (a + c) / 2;
e = (c + b) / 2;
q1 = (b - a) / 6 * (f(a) + 4*f(c) + f(b));
q2 = (b - a) / 12 * (f(a) + 4*f(d) + 2*f(c) + 4*f(e) + f(b));
deltaq = (q2 - q1) / 15;
if abs(deltaq) < toleranca
    rezultat = q2 + deltaq;
else
    rezultat = rekurzivniSimpson(a, c, f, toleranca/2) + rekurzivniSimpson(c, b, f, toleranca/2);
end




end