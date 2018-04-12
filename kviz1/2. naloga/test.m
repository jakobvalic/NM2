% Kontrolne toèke za Bezierjevo krivuljo

tocke_x = [-1 0 3 5];
tocke_y = [0 3 -2 2];

% Vrednost Bezierjeve krivulje s 3 kontrolnimi toèkami v toèki 1/2
vrednost = bernpoly(3, tocke_x, tocke_y, 1/2);
% Izraèun minimalne razdalje do štirih toèk
r = minRazdalja(vrednost, tocke_x, tocke_y)

razdalje = zeros(1,101);
for i = 0:100
    t = i/100;
    vrednost = bernpoly(3, tocke_x, tocke_y, t);
    razdalje(i + 1) = minRazdalja(vrednost, tocke_x, tocke_y)
end

max(razdalje)
