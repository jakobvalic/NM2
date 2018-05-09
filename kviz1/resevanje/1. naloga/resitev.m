format long;

a = 2 + 21/101;
f = @(x) a*cos(a*x);

% Kakšna je vrednost K_{5}f(0.5)?
vrednostK5 = kantorovic(f,5,0.5)

% Kolikšna je neskonèna norma |f - K_{5}f| na danem intervalu x?
razlike = zeros(201, 1);
for i = 0:200
    x = (i / 200);
    razlike(i+1) = abs(f(x) - kantorovic(f,5,x));
end

napaka = max(razlike)