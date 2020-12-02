%{
  Jungwon Kim
%}
MassOfTheFirstObject = input ('Enter The mass of the first object: '); %mass is in kilogram
MassOfTheSecondObject = input ('Enter The mass of the second object: '); %mass is in kilogram
TheDistanceBetweenTheTwoObjects = input ('Enter The distance between the two objects: '); %distance is in meters
G = 6.67*10^-11;
Force = (G*MassOfTheFirstObject*MassOfTheSecondObject)/(TheDistanceBetweenTheTwoObjects)^2;
fprintf('Force = %.3e \n', Force )
