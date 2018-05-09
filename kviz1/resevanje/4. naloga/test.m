% Kontrolne toèke za Bezierjevo krivuljo
format long

d = 1 + 7/401;


tocke_x = [3 4 0 -3];
tocke_y = [2 -d -2 d];

% Vrednost Bezierjeve krivulje s 4 kontrolnimi toèkami v toèki 1/2
vrednost = bernpoly(length(tocke_x)-1, tocke_x, tocke_y, 0.5);

bernpoly(3, tocke_x, tocke_y, 0.5)

% Izraèun minimalne razdalje do štirih toèk
min_razdalja = inf;
for i = 1:length(tocke_x)
    trenutna_razdalja = norm(vrednost - [tocke_x(i) tocke_y(i)],2);
    if trenutna_razdalja < min_razdalja
        min_razdalja = trenutna_razdalja;
    end
end

min_razdalja


