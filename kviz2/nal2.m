% 2. naloga

format long

% Najprej si pridobimo seznam testnih toèk
h=1/20;
tocke = [-1];
naslednjaTocka = -1;
while naslednjaTocka < 21.00   
    naslednjaTocka = naslednjaTocka + 1/20;
    tocke = [tocke; naslednjaTocka];
end

f = @(x) exp(x)^(-2)+cos(5*x);
prviOdvod = @(x) -2*exp(1)^(-2*x) + (-5)*sin(5*x);
drugiOdvod = @(x) 4*exp(1)^(-2*x) + (-25)*cos(5*x);

razlikePrvi = [];
razlikeDrugi = [];

for j=2:length(tocke)-1
    priblizekPrvi = (f(tocke(j+1))-f(tocke(j-1)))/(2*h);
    priblizekDrugi = (f(tocke(j-1))-2*f(tocke(j))+f(tocke(j+1)))/(h^2);
    razlikePrvi = [razlikePrvi; abs(priblizekPrvi-prviOdvod(tocke(j)))];
    razlikeDrugi = [razlikeDrugi; abs(priblizekDrugi-drugiOdvod(tocke(j)))];
end

max(razlikePrvi)
max(razlikeDrugi)
















