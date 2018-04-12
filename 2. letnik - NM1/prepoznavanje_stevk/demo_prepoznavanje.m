% testna skripta

TS = importdata('testne_slike_stevk')
ts = importdata('testne_stevke')

% u�enje

samples = importdata('vzorcne_slike_stevk')

numbers = importdata('vzorcne_stevke')

bases = numbases(samples, numbers,5);


zadetki = 0;
for j = 1:size(TS,2)
    num = predictnum(bases,TS(:,j));
    % sedaj pogledamo, ali smo uganili pravo �tevko
    if num == ts(j)
        zadetki = zadetki + 1;
    end
end

fprintf('Procent uspe�nosti: %f', 100 * zadetki / size (TS, 2))