function bases = numbases(samples, numbers, d)
% Vhodni podatki:
% samples - matrika s stolpci, ki so slike �tevil
% numbers - katero �tevilke predstavlja dolo�en stolpec
% d - dol�ina


% 1) grupiranje podatkov

% struktura za shranjevanje podatkov
kosare = cell(1, 10);
% v vsak elt celice vr�emo eno matriko
for i = 1:10
    kosare{i} = []; % napolnimo s praznimi matrikami
end
    
    
for i = 1:length(numbers)
    kosare{numbers(i) + 1} = [kosare{numbers(i) + 1} samples(:,i)];
    % napolnili smo 10 ko�ar: v prvo smo dali �tevila 0,... zmeraj dodamo
    % en stolpec matriki
end
    
% dodamo singularni razcep z ukazom svd, ki vrne U, Sigma, V


% 2) obdelava podatkov
bases = cell(1, 10);
for i = 1:10
    [U, ~, ~] = svd(kosare{i}); % shranimo U-je v bases, ki je na� izhodni podatek
    bases{i} = U(:,1:d); % ne shranimo vseh stolpcev, temve� toliko, kot je podano v vhodnem podatku length
end

for i = 1:10
    % eden izmed vzorcev
    ind = find(numbers == i-1,1); % najde prvi indeks stolpca, v katerem je narisana �t i-1
    subplot(2, 10, i)
    bwimage(samples(:, ind));
    axis off
    axis equal
    
    % prvi bazni element za stevko i-1
    subplot(2,10,i+10)
    bwimage(bases{i}(:,1));
    axis off
    axis equal
end