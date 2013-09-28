% Prob 15

clear;
close;

temp = linspace(0,100,100);

A_volt = cat(2, zeros(1,9) , linspace(10,100,91)*10^-3);

B_volt = cat(2, zeros(1,49) ,linspace(50,100,51)*10^-3);


%%Plots with dots and 90% line
% Enter x and y axis values here
run = temp;
rise = A_volt;
rise2 = B_volt;
% Enter axis labels to use, comment out otherwise
xstring = 'temperature (C)';
ystring = 'voltage measured by thermocouples A & B (C)';
%Set the percent mark of y-axis "response time"
% else comment out
%percent_fit = 100;

% Calculate axis ranges
dim_offset = 0.25;
drun = abs(max(run) - min(run));
drise = abs(max(rise)-min(rise));
drise2 = abs(max(rise2)-min(rise2));

dims = [min(run)-drun*dim_offset ...
        max(run)+drun*dim_offset ...
        min(rise)-drise*dim_offset ...
        max(rise)+drise*dim_offset];


%subplot(2,1,1);
hold on
t = plot(run, rise);
o = plot(run, rise2 , 'c');

% Calculate end points for plot

p = plot(10, 0.01,'or');
r = plot(100, 0.1,'om');
t = plot(50, 0.05,'ok');


%Set figure visual parameters parameters
%set(h,'Color','c');
%title(strcat('best fit : y =  ', best_fit));
axis(dims );
if(exist('xstring') & exist('ystring'))
    xlabel(xstring );
    ylabel(ystring );
end

% Calculate and plot percent fit line, if required
if(exist('percent_fit'))
    m = (max(rise) - min(rise))* percent_fit/100 + min(rise);

    y = ones([1,length(run)])*m;
     l = plot(run,y,'g');

    px = drun*.75 + min(run);
    py = drise*.25 + min(rise);
    rtext = strcat(num2str(percent_fit),'% response ', ' ');
    text(px,py,rtext,'Color','g');
end

% Section segments of usable thermocouple
temp_a_seg = linspace(10,100,91);
temp_b_seg = linspace(50,100,51);

A_seg =  linspace(10,100,91)*10^-3 + 0.02;

B_seg = linspace(50,100,51)*10^-3 + 0.01;

g = plot(temp_a_seg,A_seg ,'-g');
h = plot(temp_b_seg,B_seg, '--g');


%leg_titles = ['line graph', 'points', 'best fit'];
legend('therm A', 'therm B', 'V1 @ T1' ,'V2 @ T2','V3 @ T3',...
            'A use','B use','Location','NorthWest');





hold off
