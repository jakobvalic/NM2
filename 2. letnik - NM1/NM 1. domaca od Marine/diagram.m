% Potrebno je še narisati diagram ()

x = sistem;

% v y shranimo vrednostu pri vseh toèkah, vkljuèno z 0 in 10
y = [1]; % vrednost pri 0
for i = 1:9
  y(1,i+1) = x(i,1);
end
y (1,11) = 0; %vredsnost pri 10

delitev = 0:1:10;
plot(delitev, y,'-*');

a = sistem';
a(1,4)