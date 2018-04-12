D = importdata('LJUBLJANA_BEZIGRAD.csv')

A = D.data();

maj = [];

% preko csv, klièemo preko A.data

for i = 1:length(A)
    if 1990 <= A(i, 1) && A(i, 2) == 5 &&  A(i, 3) == 1
        maj = [maj; A(i, :)];
    end
end


maj

% izraèunamo povpreèje

povprecje = zeros(1, 10)
for stolpec = 4 : 10 % length(maj(1))
    povprecje(stolpec) = sum(maj(:, stolpec)) / length(maj);
end


D.colheaders()
povprecje