seme = 25; rand('seed', seme); d = rand(1);

format long

A = zeros(10);
for i = 1:10
    for j = 1:10
        if i == j
            A(i,j) = d;
        else
            A(i,j) = i^2 - j^2;
        end
    end
end

norm (A,1)

b = ((1:10).^2)';
x = A\b;
norm(x, inf)

%spremeni . v , ko oddaš kviz
       