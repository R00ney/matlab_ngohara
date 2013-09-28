
n = [2 3 4 5 6 7];
s = 2.^n ;
f = 0.8 ;
speedup = 1./( (1-f) + f./s);

%%Plots with dots and 90% line
% Enter x and y axis values here
run = s;
rise = speedup;
% Enter axis labels to use, comment out otherwise
xstring = 's, percentage of task';
ystring = 's, or speedup of part';
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
