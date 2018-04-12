% 4. naloga

seme = 25; rand('seed', seme); d = 4 + rand(1);

format long

A = zeros(5);

% Napišemo matriko A
for i = 1:5
    for j = 1:5
        if j > i - 2
            A(i, j) = abs(d - i + j);
        end
    end
end

% Dobili smo zgornje Hessenbergovo matriko. 

% Preverimo, da so vse nièle matrike A enostavne.
[natancniVektorji, natancneVrednosti] = eig(A);

n = 5

% Schurov razcep. 
% Zaustavimo, ko je vsota poddiagonalnih el. < tolerance.
toleranca = 0.1;
vsotaPodd = toleranca + 1;

k = 1; % Število korakov
S = A;
P = eye(n);
while (vsotaPodd > toleranca) % && (k < 1000) 
    k = k + 1;
    [Q, R] = qr(S);
    S = R*Q;
    P = P*Q;
    vsotaPodd = 0;
    for st = 1:n
        for vr = (st+1):n % Zaènemo s prvo vrstico pod diagonalo
            vsotaPodd = vsotaPodd + abs(S(vr,st));
        end
    end 
end

% Razberemo najveèjo lastno vrednost
najLvrednost = max(diag(S));

% Lastne vrednosti so napisane v matriki P
lastniVektorjiIteracija = P;

% Razberemo normo najveèje lastne vrednosti, ki je 1. po vrsti
normaX = norm(lastniVektorjiIteracija(:,1), 1)





    
