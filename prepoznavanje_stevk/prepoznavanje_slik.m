s = importdata('vzorcne_stevke');
S = importdata('vzorcne_slike_stevk');

bwimage(S(:,1))
s(1)

bases = numbases(S, s, 5)

B6 = bases{7};
bwimage(B6(:,1)) % nari�e 6-ko, ki smo jo dobili preko singularnega razcepa


B6 = bases{7};
bwimage(B6(:,5)) % nadaljni stolpci slab�e odra�ajo iskano �tevilo