function y = lagintpoly(X, Y, x)
% X     interpolacijske to�ke, 
% Y     interpolacijske vrednosti, 
% x     abscise, pri katerih ra�unamo vrednosti interpolacijski polinom
% y     vrednosti interpolacijskega polinoma pri abscisah iz x


n = length(X)-1; % ker v X je n + 1 interpolacijskih to�k

% predpriprava
L = ones(1,n+1);
for i = 1:n+1 % isto, kot da bi �li od 0 do n
    for j = [1:i-1 i+1:n+1] % i-tega presko�imo; skupaj zlo�imo 2 seznama
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
        % x(i) je enak eni izmed interpolacijskih to�k
        y(i) = Y(k);
    end
end









end