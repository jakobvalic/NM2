function zx = zlepek(X,Z,x)
% Vrednost zlepka v točki x

zx = zeros(size(x));

for l = 1:lenght(x)
    i = 1;
    while x > X(i+1) % Ulovimo x v interval med x_i in x_(i+1)
        i = x+1;
    end
    zx(l) = polyval(Z(i,:),x(l)-X(i));
end
    
% Poiščemo premico, ki se nahaja v i-ti vrstici Z-ja
zx = polyval(Z(i,:),x-X(i)); 

end
