% prob 14

% I = I0*(exp(q*V/k/T)-1)
% I/I0 + 1= exp(q*V/k/T)
% ln(I/I0+1) = q*V/k/T
% ln(I/I0+1) * (k*T/q) = V

q = 1.602176565*10^-19 ;    % C
k = 1.3806488 * 10^-23; %JK^-1
I0 = 25*10^-9;
T = 273;
V = 0.5;

I = I0*(exp(q*V/k/T)-1);



%% Initialize Parameters

clc;

clear;

V=-0.45:0.1:0.45; %set the voltage range

T=253:293; %set the temperature range

I0=25e-9; %set the reverse current

k=1.38e-23; %set the Boltzmann constant

q=1.6e-19; %set the charge of an electron

%% Plot I to V-T

[X1,Y1]=meshgrid(V,T); %Produce the coordinates of a rectangular grid 

%from range of voltage and temperature

I=I0*(exp(q*X1./(k*Y1))-1); %Calculate current

figure;%create a new figure;

mesh(X1,Y1,I); %draw the 3D graph

xlabel('Voltage (v)'); %label the x-axis

ylabel('Temperature (K)');%label the y-axis

zlabel('Current (A)');%label the z-axis

