%% Task #1
% Response Time
time = 0:20:120;
emf = [2.5 3.8 4.5 4.8 4.9 5.0 5.0];
emf95 = ((max(emf)-min(emf))*.95+min(emf))+0.*time;
plot(time,emf);
xlabel('Time (sec)');
ylabel('e.m.f (mV)');
title('Task #1: Thermocouple Response Time');
hold all;
plot(time,emf95);
% Intercept at time = 75 sec
% Exp fit emf = 2.5(1-exp(-.3922*time))+2.5
% emf95 = 4.875
% solve for time
% Calculated time = 76.3828 sec

%% Task #2
% Thermocouple with Simulink

%% Task #3
% Thermocouple with Simulink

%% Task #4
% Functions of Simulink
% Floor function is used to remove a decimal portion of the calculated
% number of pulses since it is not a full pulse
%% Task #5
% Simulation of the Dead Zone Block

%% Task #6
% Matlab and Simulink Together
plot(tout, simout);
xlabel('Time (sec)');
ylabel('Output');
title('Sine Wave');
%% Task #7
% RLC Circuits
