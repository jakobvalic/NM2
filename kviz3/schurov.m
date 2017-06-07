% 4. naloga

format long

A = zeros(5, 5);


% Napišemo matriko A
for i = 1:5
    for j = 1:5
        if j > i - 2
            A(i, j) = abs(4 - i + j);
        end
    end
end

% Dobili smo zgornje Hessenbergovo matriko. 

% Preverimo, da so vse nièle matrike A enostavne.
natancne = eig(A);


% Schurov razcep: 
S = A;
for i = 1:100
    [Q, R] = qr(S);
    S = Q'*S*Q;
end

lastneSurove = diag(S);
sort(natancne)
% sort(lastneSurove)

% Izraèunamo lastne vrednosti
n = length(lastneSurove);

lastniVektorjiIteracija = zeros(n);
tabelaX = []

[Q, R] = qr(A);

for i = 1:n
    % Vektor x napolnimo z vrednostmi
    x1 = (S(1:i-1, 1:i-1) - S(i, i)*eye(i-1)) \ (-1.*S(1:i-1,i));
    x2 = 1;
    x3 = zeros(1, n - i);
    x = [x1' x2 x3];
    tabelaX = [tabelaX x'];
    % Izraèunamo lastni vektor
    y = Q*x'
    lastniVektorjiIteracija(:,i) = y;
end

[natancniVektorji, natancneVrednosti] = eig(A);
vektorji;
lastniVektorjiIteracija;

tabelaX;

norme = [];
for i = 1:n
    x = lastniVektorjiIteracija(:,i);
    norma = norm(A*x - lastneSurove(i).*x);
    norme = [norme norma'];
end

lastneSurove
diag(natancneVrednosti)
lastniVektorjiIteracija;


norme


norm(lastniVektorjiIteracija(:,5))


    
