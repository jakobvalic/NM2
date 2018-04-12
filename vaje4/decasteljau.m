function [bt,D] = decasteljau(B,t)
% B so kontrolne to�ke
% D bo obrnjena zgornjetrikotna shema to�k, ki jih dobimo po postopku

n = length(B)-1;
D = [B NaN(n+1,n)]; % V prvi stolpec sheme vstavimo to�ke

for j = 2:n+1 % j je indeks stolpca
    for i = 1:n+2-j
        D(i,j) = (1-t)*D(i,j-1) + t*D(i+1,j-1);
    end
end

bt = D(1,n+1);

end