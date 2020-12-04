clear
clc
DeltaTemperature = [12,17,25,40,50,58];
disp(DeltaTemperature);
%{?T = Q / (m*Cp)
AppliedHeat = DeltaTemperature .* 5000 .* 0.39;
%{5kg, 0.39 joules per gram kelvin
disp(AppliedHeat);
fprintf('DeltaTemperature\t');
fprintf('%6.2f\t\t',DeltaTemperature);
fprintf('\n');
fprintf('AppliedHeat\t\t\t');
fprintf('%6d\t\t',AppliedHeat);
fprintf('\n');
