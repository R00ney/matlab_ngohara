clear
close 

x(1) = 0;
y(1) = 0;

for(i = 1:100)
    k = i+1; 
    x(k) = 1/(i^2);
    y(k) = ( y(k-1) + 0.5*(1)* ( x(k) + x(k-1) ));



end
k = 0:100;
plot(k,y);
%set(gca,'YScale','log');

xstring = 'k';
ystring = 'y(k) ';

%axis(dims );
if(exist('xstring') & exist('ystring'))
    xlabel(xstring );
    ylabel(ystring );
end