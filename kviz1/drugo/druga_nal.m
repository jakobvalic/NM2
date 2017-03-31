%druga naloga, iskanje minimuma

volumen_kozarca  = 0.35 / 1000 %0.35L = 0.35 dm^3 = 0.00035 m^3
cena_kartona = 0.5 %/cena v Eur na m^2
cena_plastika = 0.6 %/cena v Eur za m^2

%plastika: pl 1/2 sfere = 2*pi*r^2 + podaljšan pas = 0,01*2*pi*r
%karton: pl valja = 2*pi*r * visina + pl dna = Pi*(r + 1)^2
%visino izrazimo z volumnom kozarca: pi*r^2 * visina = volumen kozarca
% visina = volumen_kozarca / pi*r^2



%celotna cena v 
plastika = @(r) (2*pi*r^2 + 0.01*2*pi*r) * cena_plastika
karton = @(r) (2*pi*r*(volumen_kozarca / (pi * r^2)) + pi * (r + 1)^2) * cena_kartona
skupna_cena = @(r) plastika(r) + karton(r) %v Eur
%ekvivalentno kot:
%skupna_cenaV2 = @(r) 

%odvajamo skupno ceno
%odvod_skupne_cene =

%išèemo r, pri katerem bo skupna cena najmanjša
%x = fzero(odvod_skupne_cene, 1)

