% 4. naloga
format long

seme = 47; rand('seed', seme); d = 18 + rand(1);

temp = [2 5 10 20 30 50 100;
        20 20.5 19.5 19 d 17 16]
    
% poi��imo parabolo po MNK

A = zeros(length(temp), 3)

A(:,1) = 1
A(:,2) = temp(1,:) % vi�ine tal

for vr = 1 : length(temp) % kvadrati vi�in
    A(vr,3) = temp(1,vr)^2
end

b = temp(2,:)'

% re�ujemo predolo�en sistem Ax = b; x = [a b c] nam poda koeficiente
% parabole :)

x = A\b

% razberemo koeficiente
a = x(1)
b = x(2)
c = x(3)

% zapi�emo ena�bo parabole
p = @(x) a + b*x + c*x^2

% izra�unamo predvideno temperaturo na 40 cm
visina_40 = p(40)

% poi��imo maksimalni odmik parabole od podatkov
odmiki = zeros(length(temp), 1)

for i = 1:length(temp)
    visina = temp(1,i)
    temperatura = temp(2,i)
    odmiki(i) = abs(temperatura - p(visina)) 
end

max_odmik = max(odmiki)








