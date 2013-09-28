% Trapezoid example (DSP)
% not quite right

uk = [];
u = [];
for(i=2:length(uk)) sum = sum + (uk(i)+uk(i-1))*(u(i)-u(i-1))/2; end
sum
