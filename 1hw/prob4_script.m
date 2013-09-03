% Neal O'Hara 9/3/13
% HW1 Problem 4 (ECE 556)

clear
close

time = [0 20 40 60 80 100 120]
emf_mV = [2.5 3.8 4.5 4.8 4.9 5.0 5.0]

dimensions = [-5 125 0 5.5];


hold on
t = plot(time, emf_mV);
p = plot(time, emf_mV,'or');


axis(dimensions );
xlabel('time');
ylabel('emf_mV');

%legend('line graph', 'points', 'best fit','Location','NorthWest');
%title(strcat('best fit : y= ', temp));

%Get the 90% mark of an array's range
temp = emf_mV;
m = (max(temp) - min(temp))*0.9 + min(temp);

y = ones([1,length(time)])*m;
plot(time,y,'g');

rtext = strcat('90% response is aproximately 6s', ' ');
text(55,3.5,rtext);
