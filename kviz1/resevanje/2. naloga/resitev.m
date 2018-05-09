% 2. naloga
format long

p1 = 10 + 47/201;

% V vektor a zapi�emo koeficiente polinoma q
a = [p1 2 3 -5 1 7 -4];

P = [32 0 -48 0 18 0 -1;
    0 16 0 -20 0 5 0;
    0 0 8 0 -8 0 1;
    0 0 0 4 0 -3 0;
    0 0 0 0 2 0 -1;
    0 0 0 0 0 1 0;
    0 0 0 0 0 0 1];

P = transpose(P);

% Re�imo sistem linearnih ena�b
b = P\a'

% Vodilni koeficient �ebi�evih polinomov je prvi element vekotrja b
vodilni_koeficient = b(1)

% �ebi�eva ekonomizacija nam pove, da lahko spustimo vodilni �len in
% dobimo polinom najbolj�e enakomerne aproksimacije za eno stopnjo ni�je.

b_enak = b;
b_enak(1) = 0

% Razvijemo nazaj v poten�ni bazi
a_enak = P*b_enak
polinom_enak_apoks = @(x) a_enak(7) + a_enak(6)*x + a_enak(5)*x^2 + a_enak(4)*x^3+a_enak(3)*x^4+a_enak(2)*x^5
polinom_enak_apoks(0.5)
