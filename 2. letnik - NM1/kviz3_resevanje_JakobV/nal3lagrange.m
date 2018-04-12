format long

seme = 5; rand('seed', seme); c = 2 + 3*rand(1)/4;

f = @(x) (-x.*cos(c.*x));



k = 3; % Interpolacijske to�ke so 0, 1, 2, 3

tocke = zeros(1, k + 1);

for i = 1:length(tocke);
    tocke(i) = pi*(i-1)/3; % Napolnimo z vrednostmi to�k
end

tocke;


% Izra�unamo vrednosti polinoma v interpolacijskih to�kah
vrednosti_polinoma = zeros(1, length(tocke));

for i = 1:k+1
    vrednosti_polinoma(i) = f(tocke(i));
end


% Sedaj pokli�emo funkcijo, ki jo je napisal asistent.
% Zanima nas vrednost polinoma v to�ki 1.
y = lagintpoly(tocke, vrednosti_polinoma, 1)






