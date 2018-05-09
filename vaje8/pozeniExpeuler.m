% Primer za expuler 

X = linspace(0,1,5); % Èe manjšamo korak, se razmik krèi; namesto 5 vstavimo 20 ali 100
f = @(x,y) x+y-1;
y0 = 1;

tic; Ye = expeuler(X,f,y0); toc;
tic; Yi = impeuler(X,f,y0,1e-6); toc;
x = linspace(0,1);


plot(x,exp(x)-x,X,Ye,X,Yi);
% Eksplicitna Eulerjeva metoda se od spodaj približuje