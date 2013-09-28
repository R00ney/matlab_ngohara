%
clear
close

%v = sin(t) + sin(2t);  %f = 2/2pi
nyquiest = 2/pi;  %2 * f = nyquist freq.
test = [1/2 2/3 2 10] * nyquiest;
test = test.^-1;

%time intervals
t1 = 0:test(1):6*pi;
t2 = 0:test(2):6*pi;
t3 = 0:test(3):6*pi;
t4 = 0:test(4):6*pi;

%measured at frequencies of test
v1 = sin(t1) + sin(2*t1);
v2 = sin(t2) + sin(2*t2);
v3 = sin(t3) + sin(2*t3);
v4 = sin(t4) + sin(2*t4);

%plot vars
dims = [0 6*pi -2 2];
xstring = 'time';
ystring = 'signal ';


subplot(4,1,1)
plot(t1,v1)
axis(dims );
xlabel(xstring );
ylabel(strcat(ystring , '1/2', '*nquist') );

subplot(4,1,2)
plot(t2,v2)
axis(dims );
xlabel(xstring );
ylabel(strcat(ystring , '2/3', '*nquist') );

subplot(4,1,3)
plot(t3,v3)
axis(dims );
xlabel(xstring );
ylabel(strcat(ystring ,'2', '*nquist') );

subplot(4,1,4)
plot(t4,v4)
axis(dims );
xlabel(xstring );
ylabel(strcat(ystring , '10', '*nquist') );

