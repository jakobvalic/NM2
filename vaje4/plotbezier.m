function plotbezier(B,t)

bt = bezier(B,t);

hold on
plot(bt(:,1),bt(:,2));

% Nari�emo �e kontrolne to�ke
%scatter(B(:,1),B(:,2));
plot(B(:,1),B(:,2),'-');
hold off

end


