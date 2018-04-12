function zx = linzlepek(X,Y,x)

Z = [diff(Y)./diff(X); Y(1:end-1)]';

zx = zlepek(X,Z,x);

end