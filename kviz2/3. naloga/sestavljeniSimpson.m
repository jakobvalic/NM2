% Za 3. nalogo

function q2 = sestavljeniSimpson(a, b, f)

c = (a + b) / 2;
d = (a + c) / 2;
e = (c + b) / 2;
q2 = (b - a) / 12 * (f(a) + 4*f(d) + 2*f(c) + 4*f(e) + f(b))

end