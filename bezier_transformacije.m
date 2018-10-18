% afine transformacije Bezierjeve krivulje

B0 = [-1 0; -2 1; 2 1; 1 0];
B1 = B0*[1 0; 0 -1]';
B2 = B1*[0 -1; 1 0]';
B3 = B2 + ones(4,1)*[2 -3];

t = linspace(0,1);

clf

subplot(2,2,1);
plotbez(B0,t);
title('Bezierjeva krivulja, ki jo afino transformiramo');

subplot(2,2,2);
plotbez(B1,t);
title('Zrcaljenje Bezierjeve krivulje cez x os');

subplot(2,2,3);
plotbez(B2,t);
title('Rotacija Bezierjeve krivulje za kot pi/2');

subplot(2,2,4);
plotbez(B3,t);
title('Premik Bezierjeve krivulje za vektor (2,-3)');
