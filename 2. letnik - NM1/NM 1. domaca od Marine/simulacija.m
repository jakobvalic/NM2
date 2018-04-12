sim = 10^5;
st = sim;

x_0 = 0;
x_10 = 0;

x = [1 2 3 4 5 6 7 8 9];

while st > 0
  poz = 4;
  while any(poz==x) == 1
      nak = rand(1);
    if nak <= 1/3
        poz = poz-1;
    else
        poz = poz+1;
    end
  end
   
  if poz == 0
      x_0 = x_0 + 1;
  elseif poz == 10
      x_10 = x_10 + 1;
  else
      napaka = napaka + 1;
  end
   
  poz = 4;
  st = st - 1;
  
end

x_0
odstotek = x_0/sim

a = sistem'; % izraèunane vrednosti za vsako toèko
r = abs(a(1,4)-odstotek) %ujemanje simulacije z izraèunom
