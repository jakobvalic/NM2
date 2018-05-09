% 3. naloga

format long
f = @(x) 1/sqrt(x+1);

osnovniSimpson(0, 1, f)

sestavljeniSimpson(0, 1, f)

rekurzivniSimpson(0, 1, f, 1e-4)