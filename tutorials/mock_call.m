%ngohara 8/25/13 

%% Create clall model
% Create time vector
prompt = 'Enter f0 value: ';
fs = 4000;
 t = 0:1/fs:1.5;
 
 
 % Create harmonic signal
 f0 = input(prompt);
 y1 = sin(2*pi*f0*t);
 y2 = sin(2*pi*2*f0*t);
 y3 = sin(2*pi*3*f0*t);
 y0 = y1 + y2 + y3;
 
 %Create envelope
 A = (2*exp(-1.5*t)).*sin(2*pi*0.65*t);
 
 %Create signal
 call = A.*y0;
 
 %% Sound Section
 % Play sound
 soundsc(call,fs)
 
 %% Plot Section
 % Plot
 plot(t,call)
 
 
 
 
 