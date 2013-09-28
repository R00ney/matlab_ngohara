% Neal O'Hara 9/3/13
% Prob 5
%
% When a 1k potentiometer has a load of 10k  
% and is at one-third of its maximum 
% displacement as shown in the figure,
% (a) What is the corresponding non-linearity
% error, as a percentage of full range?   
% (b) Write a MatLab m-file to calculate and 
% plot errors when the load resistance ranges
% from 1K to 20K at steps of 1K. Explain
% the behavior of non-linearity error.

clear
close

res_value = 1000:1000:20000;
pot = ones([1,length(res_value)]);
pot_a = 2000/3 * pot;
pot_b = 1000/3 * pot;

final_value = pot_a + (pot_b.*res_value)./(pot_b+res_value);


%%Plots with dots and 90% line
% Enter x and y axis values here
run = res_value;
rise = final_value;
drun = abs(max(run) - min(run));
drise = abs(max(rise)-min(rise));
dims = [min(run)-drun*.1 max(run)+drun*.1 min(rise)-drise*.1 max(rise)+drise*.1];


subplot(2,1,1);
hold on
t = plot(run, rise);
p = plot(run, rise,'or');


axis(dims );
xlabel('load value (ohms)');
ylabel('total resistance (ohms)');

%legend('line graph', 'points', 'best fit','Location','NorthWest');
%title(strcat('best fit : y= ', temp));

%Get the percent mark of an array's range
percent = 100;
m = (max(rise) - min(rise))* percent/100 + min(rise);

y = ones([1,length(run)])*m;
plot(run,y,'g');

px = drun*.5 + min(run);
py = drise*.5 + min(rise);
rtext = strcat(num2str(percent),'% response ', ' ');
text(px,py,rtext,'Color','g');
hold off


subplot(2,1,2);
hold on
error = 100*(y-final_value)/(max(y)-0);
rise = error;
drise = abs(max(rise)-min(rise));

dims = [min(run)-drun*.1 max(run)+drun*.1 min(rise)-drise*.1 max(rise)+drise*.1];

e = plot(run, rise);
f = plot(run, rise,'or');


axis(dims );
xlabel('load value (ohms)');
ylabel('total error %');
