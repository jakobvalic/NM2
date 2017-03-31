% DIFERENCNE ENACBE
% do odsopanja pride, ker je b_n = C * (1/3)^n + D * 3^n, kjer je D = 0 +
% epsilon. Epsilon pride zaradi napake pri raèunanju raèunalnika pri
% velikih èlenih.


%seznam a
a = [1 1/2 zeros(1, 49)];
for n = 3:51
    a(n) = 5*a(n-1)/2 - a(n-2);
end

subplot(1,2,1); %(št. vrstic, št. stolpcev, trenutni graf)
scatter(0:50, a);
title('Seznam a');

%seznam b
b = [1 1/3 zeros(1,49)];
for n = 3:51 
    b(n)= (10/3)*b(n-1) - b(n-2);
end

subplot(1,2,2);
scatter(0:50, b);
title('Seznam b');
