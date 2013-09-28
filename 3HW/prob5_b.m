clear 
close

n = [3 4 8 12 16 32 64];
step = 10 ./ 2.^n;

%%Plots with dots and 90% line
% Enter x and y axis values here
run = [0 1 2 3 4 5 6 7 8];
rise = run.*step(1);

%% Enter axis labels to use, comment out otherwise
xstring = 'bit value (shifted left a little)';
ystring = 'Corresponding Analong Range (V) ';
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
t = stairs(run, rise);
p = plot(run, rise,'or');
%set(gca,'YScale','log');


%axis(dims );
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

legend('stair graph', 'decision points' ,'Location','SouthEast');

hold off