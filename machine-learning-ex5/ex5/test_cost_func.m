X = [1 2 3 4];
y = 5;
theta = [0.1 0.2 0.3 0.4]';
[J g] = linearRegCostFunction(X, y, theta, 7);
fprintf('J:%f\n',J);
fprintf('g:%f\n',g); 

%J =  3.0150
%g =
%  -2.0000
%  -2.6000
%  -3.9000
%  -5.2000
