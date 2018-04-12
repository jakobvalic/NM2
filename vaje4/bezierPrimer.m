B = [-1 0; -2 1; 2 1; 1 0];
plotbezier(B, linspace(0,1))

% Premaknemo le kontrolne to�ke
tic; B1 = ([1 0; 0 -1]*B')'; toc
plotbezier(B1, linspace(0,1))

% Dosti bolj potratno je, �e premaknemo vse to�ke na krivulji
b = bezier(B, linspace(0, 1, 1000));
tic; b1 = ([1 0; 0 -1]*b')'; toc