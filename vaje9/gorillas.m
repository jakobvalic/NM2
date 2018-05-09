% Priprava gorillas igrice
clf
hold on

g = 9.81; c = 0.1; m = 10;
axis([0 10 0 10])

V = input('Vnesi hitrost: ');
alfa = input('Vnesi kot: ');
x1 = 0;
y1 = 0;
x2 = 8;
y2 = 3;

vx = V*cos(alfa*pi/180);
vy = V*sin(alfa*pi/180);


[r, p] = ustreli(g, c, m, x1,y1,vx,vy,x2,y2)

% Sedaj želimo še raèunalniško dobiti rešitev
F = @(v) ustreli(g,c,m,x1,y1,v(1),v(2),x2,y2);
v = fminsearch(F,[vx;vy]);
[r1,p1] = ustreli(g,c,m,x1,y1,v(1),v(2),x2,y2);



% Narišemo obe gorili
scatter(x1, y1, 'b');
scatter(x2, y2, 'g');

% Trajektorija naše banane in trajektorija banane, ki zadene gorilo
plot(p(:,1),p(:,2),'r');
plot(p1(:,1),p1(:,2),'m');


% Ena izmed toènih rešitev
sqrt(v(1)^2+v(2)^2)
atan(v(2)/v(1))/pi*180




hold off