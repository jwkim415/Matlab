%{
Jung Kim
Homework 5
04.10.2015
Provide total number of batches in each day
%}

clear;
clc;

load('suture.mat')
%load sutmre.mat file

choice = 1;
day = 0;
totalrejected = 0;

%initialize loop control variables


while (choice==1) || (choice==2) || (choice==3);
    % while user input is 1 or 2 or 3
    disp('1. Generate report with the number of rejected batches in each category in given day')
    disp('2. Generate report with the number of rejected batches in each category for each of the five weeks')
    disp('3. Quit')
    choice = input('Enter your choice [number from 1 through 3]: ');
    %display menu with 3 options and ask user to input his/her option
    if (choice==1);
        %when user choice is 1
        day = input('Enter day of rejection: ');
        % ask user to input which day of rejection she/he wants to see
        while day >0
            if day ==1 ||day==2||day==3||day==4||day==5
                totalrejected = OneDayReport(suture,day);
                % if the user entered 1 through 5, display total number of
                % batches for given day
                % this total sum is computed in function file(OneDayReport.m)
                break
                %end loop after computing
            elseif (day<1) || (day>5)
                %if the user entered invalid day, display invalid and ask again
                %until she/he enters correct input day
                fprintf('\nInvalid input\n')
                day = input('Enter day of rejection: ');
            end
        end
        break
    elseif (choice==2);
        % if the user choose 2, display full 5 day report
        fprintf('\n\nTotal number of barches in each day: \n')
        % label the result
        FullReport(suture);
        break
    elseif (choice == 3);
        %if the user enters 3, quit the program
        fprintf('\n\nQuit selected. Program will exit\n');
        break
    else (choice~=1) | (choice~=2) | (choice~=3);
        fprintf('\n\nInvalid choice\n');
        %if the user enters other than 1 or 2 or 3, display invalid input
    end
end


