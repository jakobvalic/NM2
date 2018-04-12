function y = lagintpoly(X,Y,x)
% Opis:
%  lagintpoly vrne vrednosti interpolacijskega polinoma za paroma razlicne
%  interpolacijske tocke, izracunane s pomocjo Lagrangeeve oblike
%  interpolacijskega polinoma
%
% Definicija:
%  y = lagintpoly(X,Y,x)
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

% stopnja interpolacijskega polinoma
n = length(X)-1;

% predpriprava
L = ones(1,n+1);
for i = 1:n+1    
    for j = [1:i-1 i+1:n+1]
        L(i) = L(i)/(X(i)-X(j));
    end
end

% racunanje vrednosti interpolacijskega polinoma pri abscisah iz seznama x
y = zeros(size(x));
for i = 1:length(x)
    k = find(X == x(i),1);
    if isempty(k)
        % x(i) ni enak nobeni izmed interpolacijskih tock
        w = prod(x(i)-X); % vsi cleni produkta so razlicni od 0
        for j = 1:n+1
            y(i) = y(i) + Y(j)*L(j)*w/(x(i)-X(j));
        end
    else
        % x(i) je enak eni izmed interpolacijskih tock
        y(i) = Y(k);
    end
end

end