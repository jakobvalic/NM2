function min = minimum(volumen)
  % izra�una minimalen polmer(r_min) in vi�ino(h_min) embala�e pri danem volumnu;
  % volumen mora biti podan v kubi�nih centimetrih
  % ta funkcija ra�una z ustreznimi centimetri in evri
 
  
  % Pazi na enote!!
  % �e m^2 karton stane 0.5�, potem cm^2 stane 0.00005�.
  
  %volumen = pi*r^2*h
  h = @(r)volumen/(pi*r^2); %anonimna funkcija
  
  % Ko Kli�emo anonimne funkcije, moramo zraven podati �e argument.
  P_plasca = @(r)2*pi*r*h(r);
  P_kroga = @(r)pi*(r+0.5)^2;
  P_sfere = @(r)2*pi*r*(r+1);
  
  cena = @(r)((P_plasca(r) + P_kroga(r))*0.00005 + P_sfere(r)*0.00006);
  
  %sedaj izra�unaj minimum cene po r!!!!!!!!!!!!!
  
  r_min = fminbnd(cena,0,20);
  h_min = h(r_min);
  min = [r_min, h_min];
  
  %%%%%%%%%%%%%%%%%%%%%
  % (b) del naloge
  
  %delitev = 0:0.0001:5;
  %plot(delitev,cena)
  
  oblik = 0.02;
  
  %nova funkcija, kjer od stare od�tejemo minimum in �eljeno ceno
  cena_oblik = @(r)cena(r)- oblik; 
  
  r_oblikovalca = fzero(cena_oblik,r_min) %iskanje ni�el (pazi v kateri okolici); iskani r
  cena(r_oblikovalca) %preverimo, �e se polmer ujema z izbrano ceno
  h(r_oblikovalca) % vi�ina, ki si jo je zamislil oblikovalec
  
end