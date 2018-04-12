% 4. naloga

format long

A = zeros(5);

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
[natancniVektorji, natancneVrednosti] = eig(A);

n = 5

% Schurov razcep.
S = A;
P = eye(n);     
for i = 1:100
    [Q, R] = qr(S);
    S = R*Q;
    P = P*Q;
end

lastneSchurove = diag(S);

% Lastne vrednosti so napisane v matriki P
lastniVektorjiIteracija = P;

norme = [];
for i = 1:n
    x = lastniVektorjiIteracija(:,i);
    norma = norm(x);
    norme = [norme norma'];
end

% Primerjamo lastne vrednosti, ki smo jih dobili s Schurovim razcepom z
% natanènimi
lastneSchurove;
natancneVrednosti = diag(natancneVrednosti);


lastniVektorjiIteracija;

% Razberemo normo najmanjše lastne vrednosti, ki je 5. po vrsti
norm(lastniVektorjiIteracija(:,5), 1)


    
