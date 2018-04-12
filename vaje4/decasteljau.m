function [bt,D] = decasteljau(B,t)
% B so kontrolne toèke
% D bo obrnjena zgornjetrikotna shema toèk, ki jih dobimo po postopku

n = length(B)-1;
D = [B NaN(n+1,n)]; % V prvi stolpec sheme vstavimo toèke

for j = 2:n+1 % j je indeks stolpca
    for i = 1:n+2-j
        D(i,j) = (1-t)*D(i,j-1) + t*D(i+1,j-1);
    end
end

bt = D(1,n+1);

end