% Neal O'Hara 9/3/13
% Prob 5
%
% When a 1k potentiometer has a load of 10k  
% and is at one-third of its maximum 
% displacement as shown in the figure,
% (a) What is the corresponding non-linearity
% error, as a percentage of full range?   
% (b) Write a MatLab m-file to calculate and 
% plot errors when the load resistance ranges
% from 1K to 20K at steps of 1K. Explain
% the behavior of non-linearity error.

res_value = 1000:1000:20000;
pot = ones([1,length(res_value)]);







