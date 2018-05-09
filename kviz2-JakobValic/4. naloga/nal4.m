% 4. naloga

format long

parameter4 = 1 + 47/101;

h = 0.2;
alfe = [0; 0.5; 0.5; 1];
game = [1/6; 1/3; 1/3; 1/6];

bete = [0 0 0 0; 0.5 0 0 0; 0 0.5 0 0; 0 0 1 0]

f = @(x,y) parameter4*x^2*y;

tockeX = linspace(0, 1, 6)
% Zaèetni približek
y0 = 1;

% Ker so vsi koeficienti v prvi vrstici enaki niè, velja kar


