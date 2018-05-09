% 2. naloga

format long

% Najprej si pridobimo seznam testnih toèk
tocke = linspace(-1/20,1,22)

f = @(x) exp(1)^(-2*x)+cos(5*x);
prviOdvod = @(x) -2*exp(1)^(-2*x) - 5*sin(5*x);
drugiOdvod = @(x) 4*exp(1)^(-2*x) - 25*cos(5*x);

razlikePrvi = [];
razlikeDrugi = [];

priblizkiPrvi = [];
priblizkiDrugi = [];

tocniPrvi = [];
tocniDrugi = [];

for j=2:length(tocke)-1
    priblizekPrvi = (f(tocke(j+1))-f(tocke(j-1)))/(2*h);
    priblizekDrugi = (f(tocke(j-1))-2*f(tocke(j))+f(tocke(j+1)))/(h^2);
    priblizkiPrvi = [priblizkiPrvi; priblizekPrvi];
    priblizkiDrugi = [priblizkiDrugi; priblizekDrugi];
    tocniPrvi = [tocniPrvi; prviOdvod(tocke(j))];
    tocniDrugi = [tocniDrugi; drugiOdvod(tocke(j))];    
    razlikePrvi = [razlikePrvi; abs(prviOdvod(tocke(j))-priblizekPrvi)];
    razlikeDrugi = [razlikeDrugi; abs(drugiOdvod(tocke(j))-priblizekDrugi)];
end

max(razlikePrvi)
max(razlikeDrugi)

hold on
tockeZaRisanje = tocke(2:length(tocke)-1);
plot(tockeZaRisanje, priblizkiDrugi, 'g')
plot(tockeZaRisanje, tocniDrugi, 'r')

plot(tockeZaRisanje, priblizkiPrvi, 'g')
plot(tockeZaRisanje, tocniPrvi, 'r')
hold off

% Približek je dober, saj smo izbrali majhen h. 













