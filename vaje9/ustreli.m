function [r,p] = ustreli(g,c,m,x1,y1,vx1,vy1,x2,y2)
% [x2 y2] je pozicija nasprotne gorile
% r je razdalja od trenutne lege banane do druge gorile

% V z0 spravimo [x; y; v; u]
z = [x1; y1; vx1; vy1];
f = @(z) [z(3); z(4); 
    -c*sqrt(z(3)^2+z(4)^2)*z(3)/m;
    -g-c*sqrt(z(3)^2+z(4)^2)*z(4)/m];




% Poskusimo sedaj z Eulerjevo metodo
p = [z(1) z(2)]; % V matriko p shranjujemo polo�aje: x polo�aj, y polo�aj
Z = z;
h = 0.02;
r = norm(p-[x2 y2]);

% Ne vemo, v kak�nem �asu bo banana bodisi pri�la na cilj bodisi padla ven
% iz zaslona. Lahko pa omejimo obmo�je zaslona
while z(1) >= 0 && z(1) <= 10 && z(2) >= 0 && z(2) <= 10
   % Implementiramo funkcijo
   if size(p,1) < 3
       z = z + h*f(z); % Izra�unali smo nov pribli�ek - novo lego.
   else
       % V resnici bi si shranili vmesne vrednosti
       z = z + h*(23*f(z) - 16*f(Z(:,end-2)) + 5*f(Z(:,end-2)))/12;
   end
   p = [p; z(1) z(2)]; % Dodamo novo lego v p.
   Z = [Z z];
   r = min(r, norm([z(1) z(2)]-[x2 y2]));
end


end