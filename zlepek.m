function [zx, m, M] = zlepek(x, a, b)
%funkcija zlepek vrne vrednosti zlepka v toèki x.
%[zx, m, M] = zlepek(x)
%m je minimalna izraèunana vrednost zlepka.
%M je maksimalna izraèunana vrednost zlepka.

if nargin == 1
    a = -2;
    b = 2;
end

if min(x) < -2 || max(x) > 2
    error('Zlepek je definiran samo za vrednosti med -2 in 2')
end

zx = zeros(size(x));
m = Inf; %nastavimo na zelo veliko vrednost
M = -Inf;
for i = 1:length(zx)
    if x(i) < -1
        zx(i) = log(x(i) + 2);
    elseif x(i) < 0
        zx(i) = (x(i) + 1)^2;
    else
        zx(i) = (x(i) + 1) / (x(i)^2 + 1);
    end
    
    if x(i) >= a && x(i) <= b    
        if zx(i) < m
            m = zx(i);
        end
        
        if zx(i) > M
            M = zx(i);
        end
    end
end

end