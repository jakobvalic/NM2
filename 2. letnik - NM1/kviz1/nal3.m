seme = 11; rand('seed', seme); c = 1 + rand(1);

%polinom definiramo kot seznam koeficintov
p = [1 -1 -c c];

%za ra�unanje ekstrema pogledamo, kje je odvod enak ni�
odvod = polyder(p);
ekstremi = roots(odvod)

%najve�ji ekstrem (glede na x - os)
naj_ekstrem = max(ekstremi)

%slede�e vrstice so za iskanje najve�jega ekstrema glede na y -os
%pogledamo, kak�ne so vrednosti polinoma v to�kah, kjer je odvod enak 0
vrednosti_ekstr = polyval(p, ekstremi);
%najve�ja vrednost odvoda
naj_vrednost = max(vrednosti_ekstr);
%iz rezultatov vidimo, da je najve�ji ekstrem  2.089174156655683.
%Dose�en je pri drugi ni�li odvoda, ki zna�a -0.478112213612818



%kje p seka x^3
razlika = p - [1 0 0 0];
presecisce = roots(razlika)