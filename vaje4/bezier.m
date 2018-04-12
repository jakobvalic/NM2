function bt = bezier(B,t)

d = size(B,2);
k = length(t);
bt = zeros(k,d); % ena izmed koordinat toèk na krivulji

for i = 1:k
   for j = 1:d
       bt(i,j) = decasteljau(B(:,j),t(i));       
   end
end




end