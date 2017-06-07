format long

x = 0:0.001:pi;

f = @(x) (x.*sin(x));

plot(x, f(x))

k = 3; % Interpolacijske toèke so 0, 1, 2, 3

tocke = zeros(1, k + 1);

for i = 1:length(tocke);
    tocke(i) = pi*(i-1)/3; % Napolnimo z vrednostmi toèk
end

tocke;


% Izraèunamo vrednosti polinoma v interpolacijskih toèkah
vrednosti_polinoma = zeros(1, length(tocke));

for i = 1:k+1
    vrednosti_polinoma(i) = f(tocke(i));
end

% Pripravimo si prazen vektor za deljene diference

diference = zeros(1, length(tocke));
diference(1) = tocke(1); % Prva DD je vrednost v prvi interpolacijski toèki

DD = vrednosti_polinoma;

naborDD = {};
n = length(tocke); 

% V iteraciji bomo zmeraj znova ustvarili vektor DD
for k = n-1:-1:1 % Stolpec deljenih diferenc, zaèenši z drugimi
    DDnovi = zeros(1, k);
    r = n - k; % Razlika med èlenoma v imenovalcu
    for j = 1:k
        stevec = DD(j + 1) - DD(j);
        im = tocke(j + r) - tocke(j);
        DDnovi(j) = stevec / im;
    end
    naborDD{1, n - k} = DDnovi; % Shranimo v celico; lahko bi tudi kot stolpec matrike, 
                                % kjer bi spodaj pisali nièle
    DD = DDnovi;
end


% Pogledamo prve èlene diferenc
for i = 1:length(naborDD)
    vektor = naborDD{i};
    diference(i + 1) = vektor(1);
end

diference




