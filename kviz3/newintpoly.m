function [y,D] = newintpoly(X,Y,x)
% Opis:
%  newintpoly vrne vrednosti interpolacijskega polinoma za paroma razlicne
%  interpolacijske tocke, izracunane s pomocjo Newtonove oblike
%  interpolacijskega polinoma, ter po potrebi se shemo deljenih diferenc
%
% Definicija:
%  [y,D] = newintpoly(X,Y,x)
%
% Vhodni podatki:
%  X    seznam interpolacijskih tock,
%  Y    seznam interpolacijskih vrednosti,
%  x    seznam abscis, za katere racunamo vrednost interpolacijskega
%       polinoma
%
% Izhodni podatek:
%  y    seznam vrednosti interpolacijskega polinoma v tockah iz x, ki
%       interpolira vrednosti iz Y v tockah iz X

% ce uporabnik ne zahteva sheme deljenih diferenc, lahko koeficiente
% interpolacijskega polinoma izracunamo ekonomicno
eco = nargout == 1;

% stopnja interpolacijskega polinoma
n = length(X)-1;

% pri ekonomicnem izracunu deljenih diferenc je potreben le seznam dolzine
% n+1, za izracun celotne sheme pa uporabimo tabelo velikosti n+1 x n+1
if eco
    D = NaN(n+1,1);
else
    D = NaN(n+1);
end

% seznam ali prvi stolpec tabele napolnimo z interpolacijskimi vrednostmi
for i = 1:n+1
    D(i,1) = Y(i);
end

% izracun deljenih diferenc
for j = 2:n+1
    for i = n+1:-1:j        
        % odlocitev, kam vpisujemo podatke glede na to, ali uporabljamo
        % seznam ali tabelo
        if eco
            pr = 1; cr = 1;
        else
            pr = j-1; cr = j;
        end
        
        % deljena diferenca (interpolacijske tocke so paroma razlicne)
        D(i,cr) = (D(i,pr)-D(i-1,pr))/(X(i)-X(i-j+1));
    end
end

% iz seznama ali tabele preberemo koeficiente polinoma
if eco
    a = D;
else
    a = diag(D);
end

% za vsak element iz seznama x izracunamo vrednost polinoma s posplosenim
% Hornerjevim postopkom
y = x;
for i = 1:length(x)
    b = a(n+1);
    for j = n:-1:1
        b = a(j) + b*(x(i)-X(j));
    end
    y(i) = b;
end

end