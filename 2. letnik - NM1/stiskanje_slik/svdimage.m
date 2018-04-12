function Ak = svdimage(img, k)



S = imread(img); % matrika s števili v uint8 formatu
A = double(S); % pretvorimo v format, ki ga svd lahko predela 

[U, S, V] = svd(A);

Ak = zeros(size(A));
for i = 1:k
    Ak = Ak + S(i,i)*U(:,i)*V(:,i)'; % shranimo si zato, da bomo lahko pogledali skrèeno sliko, 
    % za shranjevanje pa vrnemo le matriko U in V in vektor s sigmami
end

subplot(1,2,1) % razdeli platno
% slika v polni natanènosti
image(uint8(repmat(A,[1 1 3]))); % 3-krat ponovimo matriko A, zato da jo bo lahko narisalo
axis equal
axis off


subplot(1,2,2)
image(uint8(repmat(Ak,[1 1 3])));
axis equal
axis off



% svdimage('lena_bw.jpg', 50')