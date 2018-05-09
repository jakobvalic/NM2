% Implicitna Eulerjeva metoda

function Y = impeuler(X,f,y0,tol)
% Vraèamo vrednosti Y, slik delilnih toèk X

Y = zeros(size(X));
Y(1) = y0;

for n = 2:length(X) % Zanka od 2 naprej, ker gledamo za eno nazaj
    h = X(n) - X(n-1);
    % Vrinemo iteracijo, ki je reševanje implicitne enaèbe (kot smo delali
    % lani: išèemo negibne toèke iteracije)
    yn = Y(n-1);
    while true    
        Y(n) = Y(n-1) + h*f(X(n-1),yn); 
        % Pogledamo, koliko sta si narazen
        if abs(Y(n)-yn) < tol
           break;
        end
        yn = Y(n);
    end
end


end