seme = 1; rand('seed', seme); b = 3 + rand(1)/2;

format long


%vse enote v m^3
volumen_kozarca = b / (10 * 1000) %b dL = b/10 L oz. b/10 dm^3 = b / (10 * 1000) m^3
cena_kartona = 0.6 %/cena v Eur na m^2
cena_plastika = 0.8 %/cena v Eur za m^2

%plastika: pl 1/2 sfere = 2*pi*r^2 + podaljšan pas = 0,01*2*pi*r
%karton: pl valja = 2*pi*r * visina + pl dna = Pi*(r + 1)^2
%visino izrazimo z volumnom kozarca: pi*r^2 * visina = volumen kozarca
%visina = volumen_kozarca / pi*r^2

%celotna cena v 
plastika = @(r) (2*pi*r^2 + 0.01*2*pi*r) * cena_plastika
karton = @(r) (2*pi*r*(pi * r^2 / volumen_kozarca)) + (pi * (r + 1)^2) * cena_kartona
skupna_cena = @(r) plastika(r) + karton(r) %v Eur

%zapis v vektorski obliki [r^3 r^2 r 1]
plastika_v = [0 2*pi 0.01*2*pi 0] * cena_plastika
karton_v = [2*pi*pi/volumen_kozarca pi 2*pi pi] * cena_kartona
skupna_v = plastika_v + karton_v

%odvajamo skupno ceno
odvod_skupne = polyder(skupna_v)

skupna_odvod = @(r) 1.091081610206340 * r^2 + 0.000138230076758 * r + 0.000038201766668

%iscemo r, pri katerem bo skupna cena najmanjša
x = fzero(skupna_odvod, 3)
