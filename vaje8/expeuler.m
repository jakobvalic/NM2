% Za raèunanje približkov rešitve diferencialnih funkcij

function Y = expeuler(X,f,y0)
% Vraèamo vrednosti Y, slik delilnih toèk X

Y = zeros(size(X));
Y(1) = y0;


for n = 2:length(X) % Zanka od 2 naprej, ker gledamo za eno nazaj
    h = X(n) - X(n-1);
    Y(n) = Y(n-1) + h*f(X(n-1),Y(n-1)); 
end


end