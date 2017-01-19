X = [[1 1 1]' magic(3)];
y = [7 6 5]';
theta = [0.1 0.2 0.3 0.4]';
lambda=0;
[J g] = linearRegCostFunction(X, y, theta, lambda);

ans = [-1.4000;-8.7333;-4.3333;-7.9333;];
fprintf('J:%f\n',J);
fprintf('g:%f\n',g); 
