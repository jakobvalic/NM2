% 1. naloga: vsa števila v P(4, 4, -2, 3)

baza = [0 : 3]
matrika_b = perms(baza)
sez_vsehSt = []


for ind_vr = 1 : (length(matrika_b) - length(matrika_b) / length(baza)) %permutacij, ki se zaènejo z 0, neupoštevamo
    ind_vr;
    vrstica = matrika_b(ind_vr, :); % : gre po vseh stolpcih
    %pretvorimo v desetiški sistem
        for e = -2 : 3
            stevilo = 0;
            for razlika_eks = 0 : length(baza) -1 
                for i = 1 : length(vrstica)
                    stevka = vrstica(i);
                    stevilo = stevilo + stevka * 4^(e - razlika_eks);
                end
            end
            stevilo
            sez_vsehSt = [sez_vsehSt stevilo]
        end
    sez_vsehSt = [sez_vsehSt stevilo];
end

%2. poskus
for e = -2 : -5
for i = 1 : 81
    vrednost = 4^(-2)