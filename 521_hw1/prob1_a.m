

s = inf ;
f = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.95 ] ;
speedup = 1./( (1-f) + f/s);

%%Plots with dots and 90% line
% Enter x and y axis values here
run = f;
rise = speedup;
% Enter axis labels to use, comment out otherwise
xstring = 'f, percentage of task';
ystring = 's, or overall speedup';
%Set the percent mark of y-axis "response time"
% else comment out
%percent_fit = 100;

% Calculate axis ranges
dim_offset = 0.15;
drun = abs(max(run) - min(run));
drise = abs(max(rise)-min(rise));
%drise = drun;
dims = [min(run)-drun*dim_offset ...
        max(run)+drun*dim_offset ...
        min(rise)-drise*dim_offset ...
        max(rise)+drise*dim_offset];


%subplot(2,1,1);
hold on
t = plot(run, rise);
p = plot(run, rise,'or');


%Set figure visual parameters parameters


axis(dims );
if(exist('xstring') & exist('ystring'))
    xlabel(xstring );
    ylabel(ystring );
end
