% Za 3. nalogo

function q2 = sestavljeniSimpson(a, b, f)

tocke = a
for i=0:6
    tocke = [tocke; a + (b - a)/6*i];
end
        
q2 = (b - a) / 12 * (f(a) + 4*f(d) + 2*f(c) + 4*f(e) + f(b));

end