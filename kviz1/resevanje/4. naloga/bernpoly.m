function y = bernpoly(n, tocke_x, tocke_y, x)
% polinom je stopnje n + 1
% Toèke so seznam kontrolnih toèk
% Vrnemo vrednost bezierjeve krivulje ovrednotene v toèki x

y = zeros(size(x));
for i = 0:n
   bernsteinov_bazni = nchoosek(n, i)*x.^i.*(1-x).^(n-i);
   y = y + [tocke_x(i+1) tocke_y(i+1)] .* bernsteinov_bazni;
end

end