a_0 = 1
a_1 = 1/2
sez_a = [a_0, a_1, zeros(1,50)]
for i = 1 : (length(a) - 3)
    display(sez_a(i));
    sez_a(i + 2) = 5/2 * sez_a(i + 1) - sez_a(i)
    scatter(1:52, sez_a)
end

b_0 = 1
b_1 = 1/3
sez_b = [b_0, b_1, zeros(1, 50)]
for i = 1 : (length(b) - 3)
    display(sez_b(i));
    sez_b(i + 2) = 10/3 * sez_b(i + 1) - sez_b(i)
    scatter(1:52, sez_b)
end
