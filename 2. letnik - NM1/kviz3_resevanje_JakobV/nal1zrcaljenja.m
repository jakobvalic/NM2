% Prva naloga, Givensove rotacije in Householderjeva zrcaljenja

seme = 11; rand('seed', seme); a = 1 + rand(1);

A = [a 5 3 2;
     7 4 a 1;
     0 5 4 2;
     0 0 6 2;
     0 0 0 a]
 
 % Givensove rotacije
 
 
 % Pomagamo si s kodo, ki smo jo povedali na predavanjih
 
 [m n] = size(A)
 
 Q = eye(n);
 R = A;
 
 
 for j = 1:n % Po stolpcih
     b = A(i+1:end, i); % Gledamo ta vektor
     for i = j+1:m % Po vrsticah
         r = sqrt(R(j,j)^2 + R(i,j)^2);
         c = R(j,j) / r;
         s = R(i,j) / r;
         R([j,i],j:n) = [c,s;-s,c]*R([j,i],j:n);
         c([j,i])=[c,s;-s,c]*c([j,i]);
         Q([j,i],:)=[c,s;-s,c]*Q([j,i],:);
     end
 end
 
 Q = Q'
 
