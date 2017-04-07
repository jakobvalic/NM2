% naloga 3

seme = 23; rand('seed', seme); c = (3 + rand(1))/2;

F = @(x, y) [log(x^2 + y^2) - cos(x*y) - c;
            exp(1)^(x-y) + sin(x*y)];
        
JF = @(x, y) [2*x / (x^2 + y^2) + y*sin(x*y), 2*y/(x^2 + y^2);
           exp(1)^(x-y) + y*cos(x*y), -exp(1)^(x-y) + x*cos(x*y)]

% doloèamo približke po Newtonovi metodi
% uporabili bomo skripto asistenta

x0 = 0
y0 = 5


X = [x0 zeros(length(x0),maxk)];
Y = [y0 zeros(length(y0),maxk)];

dx = 2*tol*x0 + 1;
dy = 2*tol*x0 + 1;
k = 0;

maxk = 100

while norm(dx) >= tol*norm(X(k+1)) && k < maxk
   x0 = X(:,k+1);
   y0 = Y(:,k+1);
   k = k + 1;
   dx = -JF(x0, y0)\F(x0, y0);
   dy = -JF(x0, yp)\F(x0, y0);
   X(:,k+1) = x0 + dx;
   Y(:,k+1) = y0 + dx;
end






% išèemo y_2
