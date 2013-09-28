
%problem 10

clear;
close;

dig_therm = [ 50   100   50   0];
merc_therm= [ 48.8 95.3  51.2 1.1];

%%Plots with dots and 90% line
% Enter x and y axis values here
run = dig_therm;
rise = merc_therm;
% Enter axis labels to use, comment out otherwise
xstring = 'temperature measured by digital therm. (C)';
ystring = 'resistance measured by mercury therm (C)';
%Set the percent mark of y-axis "response time"
% else comment out
%percent_fit = 100;

% Calculate axis ranges
dim_offset = 0.15;
drun = abs(max(run) - min(run));
%drise = abs(max(rise)-min(rise));
drise = drun;
dims = [min(run)-drun*dim_offset ...
        max(run)+drun*dim_offset ...
        min(rise)-drise*dim_offset ...
        max(rise)+drise*dim_offset];


%subplot(2,1,1);
hold on
t = plot(run, rise);
p = plot(run, rise,'or');

%plot best fit
%between min and max points
i0 = find(rise== min(rise));
i1 = find(rise== max(rise));
drise2 = abs(max(rise)-min(rise));
slope = drise2/drun;
intercept = rise(i0);
fit = [ slope intercept];

%fit = polyfit( run, rise, 1);
syms = char('*x+');
best_fit = strcat(num2str(fit(1)),syms,num2str(fit(2)));
h = ezplot(best_fit, dims  );
%plot non-linearity
%nlinear_err = [ ((fit(1)*run(1)+fit(2)) - rise(1))*100/drise ...
%                ((fit(1)*run(2)+fit(2)) - rise(2))*100/drise ...
%                ((fit(1)*run(3)+fit(2)) - rise(3))*100/drise ];
%[ax,h1,h2] = plotyy(run,rise,run,nlinear_err);

%Set figure properties if using plotyy
%set(get(ax(1),'Ylabel'),'String',ystring);
%set(get(ax(2),'Ylabel'),'String','non-linearity error (%)');
%xlabel(xstring);

%Set figure visual parameters parameters
set(h,'Color','c');
title(strcat('best fit : y =  ', best_fit));
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


%leg_titles = ['line graph', 'points', 'best fit'];
legend('line graph', 'points', 'best fit' ,'Location','SouthEast');

hold off






