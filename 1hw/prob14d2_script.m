%prob 14 d.2

%% Initialize Parameters

clc;

clear;

I= linspace(0,20,41); %set the voltage range

T=253:293; %set the temperature range

I0=25e-9; %set the reverse current

k=1.38e-23; %set the Boltzmann constant

q=1.6e-19; %set the charge of an electron

%% Plot I to V-T

[X1,Y1]=meshgrid(I,T); %Produce the coordinates of a rectangular grid 

%from range of voltage and temperature

V=log(X1/I0+1) .* (k*Y1/q); %Calculate current

figure;%create a new figure;

mesh(X1,Y1,V); %draw the 3D graph

xlabel('Voltage (v)'); %label the x-axis

ylabel('Temperature (K)');%label the y-axis

zlabel('Current (A)');%label the z-axis

