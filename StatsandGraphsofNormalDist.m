%{
programmer: Jung Kim
date: 2.27.2015
This program provides mean, median, minimum, maximum, standard deviation
and three graphs of observed 100 people's steps they take to go to the 30
feet.
%}

clc
clear
D = [12,14,14,11,10,12,12,12,13,11,13,14,11,10,12,10,11,10,13,12,14,15,12,13,12,11,12,12,12,12,11,10,13,11,13,13,10,12,13,14,13,15,13,12,15,12,13,15,12,11,12,12,10,12,14,13,10,12,12,14,13,13,13,12,13,10,11,11,13,11,12,12,14,12,12,12,14,14,10,14,13,9,12,12,13,13,12,14,13,13,13,11,10,12,12,13,14,11,10,14];
% D is observed 100 people's steps they take to go the 30 feet. Observed at
% Homer Babbidge Library in front of Bookworm cafe to near 24 hour study room. 
mean(D); %mean of D
fprintf('\n')
disp('Mean of 30 feet steps')
fprintf('%5.2f\t',mean(D));
median(D); %median of D
fprintf('\n')
disp('Median of 30 feet steps')
fprintf('%d\t',median(D));
min(D); %minumum of D
fprintf('\n')
disp('Minimum of 30 feet steps')
fprintf('%d\t',min(D));
max(D); %maximum of D
fprintf('\n')
disp('Maximum of 30 feet steps')
fprintf('%d\t',max(D));
std(D); %standard deviation of D
fprintf('\n')
disp('Standard deviation of 30 feet steps')
fprintf('%5.2f\t\n',std(D));

%graph of observed data,D
subplot(1,3,1)
hist(D,7)
title('Observed data')
xlabel('Number of steps')
ylabel('Number of people')
grid

 %graph of 500 people randomly distributed over a normal distribution between mean and standard deviation from observed data.
subplot(1,3,2)
uniform = (15-9) * rand(1,500) + 9;
hist(uniform,30)
title('Random Uniform distribution')
xlabel('Number of steps')
ylabel('Number of people')
grid

%graph of 500 people randomly distributed over a uniform distribution between min and max from observed data.
subplot(1,3,3)
normal = 12.24 + 1.35 * randn(1,500);
hist(normal,30)
title('Random Normal distribution')
xlabel('Number of steps')
ylabel('Number of people')
grid
