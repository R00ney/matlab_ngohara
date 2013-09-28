%Neal O'Hara 9/7/13
% Prob 11,b
clear;
close;
f = 10; %10Hz
minSampleTime = 0.00001;   %set minimum sampling time
t1=0:minSampleTime:0.1;
y1 = 5*sin(2*pi*f*t1);       %generate the continuous waveform
step = 5/2^8;    %determine the step-size
t2 = t1;
y2 =  ceil(y1/step)*step;   %get the sampled waveform
subplot(2,1,1);
hold all 
plot(t1,y1);               %plot continuous waveform
stairs(t1,y2);            %plot sampled waveform
legend('Continuous Waveform','Sampled Waveform') %Set the legend
xlabel('time (s)')         %Set x-axis label
ylabel('Voltage (V)')      %Set y-axis label
title(strcat('ADC sample size is :', num2str(step) , ' V'));
hold off
%plot zoomed in segment to see steps
subplot(2,1,2);
hold all
plot(t1,y1);               %plot continuous waveform
stairs(t1,y2);            %plot sampled waveform
legend('Continuous Waveform','Sampled Waveform') %Set the legend
xlabel('time (s)')         %Set x-axis label
ylabel('Voltage (V)')      %Set y-axis label
%Determine appropriate soomed in axis
x2= length(find(y2 == -step*5));
x1 = length(find(y2 == step*5));
p0 = find(t1 == 0.05)
axis([t2(p0-x2) t2(p0+x1) -step*5 step*5]);

