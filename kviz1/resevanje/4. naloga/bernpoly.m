function y = bernpoly(n, tocke_x, tocke_y, x)
% polinom je stopnje n + 1
% To�ke so seznam kontrolnih to�k
% Vrnemo vrednost bezierjeve krivulje ovrednotene v to�ki x

y = zeros(size(x));
for i = 0:n
   bernsteinov_bazni = nchoosek(n, i)*x.^i.*(1-x).^(n-i);
   y = y + [tocke_x(i+1) tocke_y(i+1)] .* bernsteinov_bazni;
end

end