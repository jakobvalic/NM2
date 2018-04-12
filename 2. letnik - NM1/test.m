%test hitrosti za tridiagonalne matrike

n = 1e4;

%zagotoviti moramo, da bo diagonalni element 2-krat veèji od sosednjih

b = rand(n - 1, 1);
c = rand(n - 1, 1);
a = 2 + rand(n, 1);
f = rand(n, 1);

tic;
x1 = tridiag(a, b, c, f);
toc

A = diag(a) + diag(b,1) + diag(c, -1);
tic;
x2 = a\f;
toc

norm(x1 - x2)

%podamo informacijo raèunalniku
%As kot tabela, kje so nenièelni elementi
As = spdiags([a [0; b] [c; 0]], [0 1 -1], n, n); %razpršena matrika, sparse
tic;
x3 = As\f;
toc

norm(x1 - x3)