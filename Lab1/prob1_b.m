%Lab 1 prob 1 b

time= [0 20 40 60 80 100 120]';
emf = [2.5 3.8 4.5 4.8 4.9 5.0 5.0]';

%get slope of linear region around response time
slope = (5 - 4.9)/(100 - 80)

%linear extrapolate y-intercept
b = 4.9 - (80)*slope

response = 0.95 * 5

r_time = (response - b)/slope

%f = fit(time, emf, 'power1');

%plot(f, time, emf)