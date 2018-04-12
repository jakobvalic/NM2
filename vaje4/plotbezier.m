function plotbezier(B,t)

bt = bezier(B,t);

hold on
plot(bt(:,1),bt(:,2));

% Narišemo še kontrolne toèke
%scatter(B(:,1),B(:,2));
plot(B(:,1),B(:,2),'-');
hold off

end


