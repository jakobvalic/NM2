function min_razdalja = minRazdalja(vrednost, tockeX, tockeY)
% Pomožna funkcija za izraèun razdalje, kot je definirana v 4. nalogi
% Vrednost pomeni vrednost Bezierjeve krivulje
% vrnemo r, to je minimalno razdaljo

min_razdalja = inf;
for i = 1:4
    trenutna_razdalja = norm([tockeX(i) tockeY(i)] - vrednost,2);
    if trenutna_razdalja < min_razdalja
        min_razdalja = trenutna_razdalja;
    end
end

end