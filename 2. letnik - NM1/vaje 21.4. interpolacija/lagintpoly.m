function y = lagintpoly(X, Y, x)
% X     interpolacijske toèke, 
% Y     interpolacijske vrednosti, 
% x     abscise, pri katerih raèunamo vrednosti interpolacijski polinom
% y     vrednosti interpolacijskega polinoma pri abscisah iz x


n = length(X)-1; % ker v X je n + 1 interpolacijskih toèk

% predpriprava
L = ones(1,n+1);
for i = 1:n+1 % isto, kot da bi šli od 0 do n
    for j = [1:i-1 i+1:n+1] % i-tega preskoèimo; skupaj zložimo 2 seznama
        L(i) = L(i)/(X(i) - X(j));
    end
end

y = zeros(size(x));
for i = 1:length(x)
    k = find(X==x(i),1); % Gleda samo prvo pojavitev
    if isempty(k)
        w = prod(x(i)-X); % Omega
        for j = 1:n+1
            y(i) = y(i) + Y(j)*L(j)*w/(x(i)-X(j));
        end
    else
        % x(i) je enak eni izmed interpolacijskih toèk
        y(i) = Y(k);
    end
end









end