function [Q,D] = razcep(A)
% A = [2 1 5 1 7; 0 6 8 9 2; 0 0 5 3 1; 6 3 2 4 7; 0 0 4 3 1; 0 3 3 5 8];

S = size(A);
st_vrstic = S(1);
st_stolpcev = S(2);

%Zanka, s katero gledamo in popravljamo vektorje pod diagonalo

Q = eye(st_vrstic);

D = zeros(st_vrstic); %D.N.

for i = 1:st_stolpcev
    %vektor, katerega gledamo:
    b = A(i+1:end, i);
    if sum(b ~= 0) == 1 %št. nenièelnih elementov (=1 => Givens)
        
        % PREVERI ŠE, ÈE JE B ŽE KAR ENAK 0!!!!
        
        %'Givens'
    
        ind = find(b); %indeks nenièelnega elementa v vektorju
        v = [A(i,i) b(ind)];
        r = norm(v);
        c = v(1)/r;
        s = v(2)/r;
        
        Q_g = eye(st_vrstic);
        
        %ind_el = [i i+ind];
        Q_g(i,i) = c;
        Q_g(i+ind, i+ind) = c;
        Q_g(i+ind,i) = -s;
        Q_g(i,i+ind) = s;
        
        Q_g; % Dobivam Q-je!!!
            % V ukazu qr() drugaèe minusi!
        
        Q = Q * Q_g;
        
        A = Q_g*A;
        
        D = D + Q_g; %D.N.
     
        
        %Givensovo rotacijo lahko zapišemo kot samostojno funkcijo:
        % function... = Givens[matrika, stolpec, ind_elementa]???
        
    else
        % Householder
        
        %'Householder'
        
        M = A(i:end,i:end);
        m = M(1:end,1); % m ~= b !!!
         
        sz = size(M);
        I = eye(sz(1));
         
        w = m +(m(1)/norm(m(1))) * norm(m)*I(1:end,1);
         
        P_1 = I - (2/(w'*w))*(w*w');
        nad = eye(st_vrstic);
        nad(i:end, i:end) = P_1;
        P = nad;
        A = P*A;
        Q_h = P';
        Q = Q * Q_h;
        
        D = D + Q_h; % D.N.
         
         
         
%          %popravimo spodnji del matrike
%          for j = 1:sz(2)
%              v = M(1:end, j);
%              x = v - (2/(w'*w))*(w'*v)*w;
%              M(1:end, j) = x;
%          end
%          
%          M
%          
%          Nadomestna  = eye(st_vrstic)
%          Nadomestna(i:end, i:end) = M
%          P = Nadomestna;
%          A = P*A;
%          Q_h = P';
%          
%          Q = Q * Q_h;
        
    end

end



end