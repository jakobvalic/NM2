% Implicitna Eulerjeva metoda

function Y = impeuler(X,f,y0,tol)
% Vra�amo vrednosti Y, slik delilnih to�k X

Y = zeros(size(X));
Y(1) = y0;

for n = 2:length(X) % Zanka od 2 naprej, ker gledamo za eno nazaj
    h = X(n) - X(n-1);
    % Vrinemo iteracijo, ki je re�evanje implicitne ena�be (kot smo delali
    % lani: i��emo negibne to�ke iteracije)
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