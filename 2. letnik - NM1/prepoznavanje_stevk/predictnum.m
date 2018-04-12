function number = predictnum(bases, sample)

minind = NaN; % indeks minimalne norme
minnorm = Inf; % minimalna norma

for i = 1:10
    x = bases{i}\sample;
    n = norm(bases{i}*x-sample);
    if n < minnorm
        minnorm = n;
        minind = i;
    end
end

number = minind-1;

end