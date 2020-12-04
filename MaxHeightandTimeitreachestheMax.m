%{
programmer: Jung Kim
date: 2.27.2015
This program calculates height at given time, maximum height and time it
reaches the maximum
%}

clear
clc %delete all the previous works
time = 0:0.5:5; %time is from 0 to 5second for each 0.5second
a(:,1) = time; %first column
height = ((2.13 * time.^2) - (0.13 * time.^4) + (0.000034 * time.^4.752));
b(:,1) = height; %first column
disp('    Time     Height')
c = [a,b]; %2D array, first column is time, second column is height.
disp(c)

d = max(height);
MaxTime = time(7);
fprintf('The maximum height is %1.3f and it was reched at %1.1f\n',d,MaxTime)
