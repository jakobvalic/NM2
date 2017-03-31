function min = minimum(volumen)
  % izraèuna minimalen polmer(r_min) in višino(h_min) embalaže pri danem volumnu;
  % volumen mora biti podan v kubiènih centimetrih
  % ta funkcija raèuna z ustreznimi centimetri in evri
 
  
  % Pazi na enote!!
  % Èe m^2 karton stane 0.5€, potem cm^2 stane 0.00005€.
  
  %volumen = pi*r^2*h
  h = @(r)volumen/(pi*r^2); %anonimna funkcija
  
  % Ko Klièemo anonimne funkcije, moramo zraven podati še argument.
  P_plasca = @(r)2*pi*r*h(r);
  P_kroga = @(r)pi*(r+0.5)^2;
  P_sfere = @(r)2*pi*r*(r+1);
  
  cena = @(r)((P_plasca(r) + P_kroga(r))*0.00005 + P_sfere(r)*0.00006);
  
  %sedaj izraèunaj minimum cene po r!!!!!!!!!!!!!
  
  r_min = fminbnd(cena,0,20);
  h_min = h(r_min);
  min = [r_min, h_min];
  
  %%%%%%%%%%%%%%%%%%%%%
  % (b) del naloge
  
  %delitev = 0:0.0001:5;
  %plot(delitev,cena)
  
  oblik = 0.02;
  
  %nova funkcija, kjer od stare odštejemo minimum in željeno ceno
  cena_oblik = @(r)cena(r)- oblik; 
  
  r_oblikovalca = fzero(cena_oblik,r_min) %iskanje nièel (pazi v kateri okolici); iskani r
  cena(r_oblikovalca) %preverimo, èe se polmer ujema z izbrano ceno
  h(r_oblikovalca) % višina, ki si jo je zamislil oblikovalec
  
end