clear
close 

x = [0.5 1 0.5 -0.5 -1 -0.5];
x = [x x x x];

y = zeros(1,24);
y(1) = x(1) + 0 - 0;
y(2) = x(2) + y(1) - 0;

for(i = 2:22) %start 2 for y(1),y(2) initial conditions
    k = i+1; %offset for zero index
    
    y(k) = x(k) + y(k-1) - 0.5*y(k-2);



end
k = 0:20;
plot(k,y(1,1:21));
%set(gca,'YScale','log');

xstring = 'k';
ystring = 'y(k) ';

%axis(dims );
if(exist('xstring') & exist('ystring'))
    xlabel(xstring );
    ylabel(ystring );
end