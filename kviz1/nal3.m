seme = 11; rand('seed', seme); c = 1 + rand(1);

%polinom definiramo kot seznam koeficintov
p = [1 -1 -c c];

%za raèunanje ekstrema pogledamo, kje je odvod enak niè
odvod = polyder(p);
ekstremi = roots(odvod)

%najveèji ekstrem (glede na x - os)
naj_ekstrem = max(ekstremi)

%sledeèe vrstice so za iskanje najveèjega ekstrema glede na y -os
%pogledamo, kakšne so vrednosti polinoma v toèkah, kjer je odvod enak 0
vrednosti_ekstr = polyval(p, ekstremi);
%najveèja vrednost odvoda
naj_vrednost = max(vrednosti_ekstr);
%iz rezultatov vidimo, da je najveèji ekstrem  2.089174156655683.
%Dosežen je pri drugi nièli odvoda, ki znaša -0.478112213612818



%kje p seka x^3
razlika = p - [1 0 0 0];
presecisce = roots(razlika)