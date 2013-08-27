% The e.m.f. at 0C is 0 mV, at 100C it is 4.277 mV and at 200C it is 9.286 mV.

temp = [0 100 200];
emf = [0 4.277 9.286];

fit = polyfit( temp, emf, 1);
dimensions = [-10 210 -1 11];
syms = char('*x+');

hold on
t = plot(temp, emf);
p = plot(temp, emf,'or');
temp = strcat(num2str(fit(1)),syms,num2str(fit(2)));
h = ezplot(temp,dimensions );
set(h,'Color','g');
axis(dimensions );
xlabel('temp');
ylabel('emf');
legend('line graph', 'points', 'best fit','Location','NorthWest');
title(strcat('best fit : y= ', temp));

