% Za 3. nalogo

function q1 = osnovniSimpson(a, b, f)

c = (a + b) / 2;
q1 = (b - a) / 6 * (f(a) + 4*f(c) + f(b));

end