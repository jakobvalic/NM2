format long

seme = 21; rand('seed', seme); a = 1 + 250*rand(1);

sez_st = []

for i1 = 1:3
    for i2 = 0:3
        for i3 = 0:3
            for i4 = 0:3
                vektor = [i1 i2 i3 i4] %vse kombinacije
                for e = -4:4
                    koef = [4^(-1) 4^(-2) 4^(-3) 4^(-4)];
                    stevilo = dot(vektor, koef) * 4^e;
                    sez_st = [sez_st stevilo];
                end
            end
        end
    end
end

sez_st = sort(sez_st)

%število manjših
st_manj = sum(sez_st < a)

%katero število je najbližje a
pred_a = sez_st(st_manj)
po_a = sez_st(st_manj + 1)
najblizje_a = min(a - pred_a, a - po_a)

%ugotovimo, da je to število 194
