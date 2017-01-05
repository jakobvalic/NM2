%tretja naloga, raèunanaje s polinomi

%diskretno definiramo polinoma
p = @(x) -x.^5 - 19*x.^4 + 126*x.^3 - 344*x.^2 + 320*x + 25
q = @(x) -x.^4 - 17*x.^3 + 97*x.^2 - 207*x + 126


x = 0:0.1:10

plot(x,p(x))
hold all
plot(x,q(x))

%polinomi so v Matlabu predstavljeni kot seznami koeficientov
p2 = [-1 -19 126 -334 320 25]
q2 = [-1 -17 97 -207 126]

nicle_p = roots(p2)
nicle_q = roots(q2)

%polyval(p, x) vrne vrednost polinoma p v toèki x
%polyder(p) vrne odvod polinoma p
%polyder(p, q) vrne odvod produkta, t.j. (p * q)'

polyder(p2)


