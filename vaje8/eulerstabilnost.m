% Primer expuler za toge funkcije - funkcija podivja

X = linspace(0,1,5);
f = @(x,y) -10*y;
y0 = 1;

tic; Ye = expeuler(X,f,y0); toc;
x = linspace(0,2);


plot(x,exp(-10*x),X,Ye);
% Eksplicitna Eulerjeva metoda se od spodaj približuje