function J = computeCost(x, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%temp=0;
J = sum((x * theta - y).^2)*(1/(2*m));

%for i = 1:m
%    step1Array = ((x(i) * theta) - y(i)).^2;
%    
%    temp = temp+((theta(1,1)*x(i,1)+theta(2,1)*x(i,2))-y(i,1)).^2;
%    fprintf('step1 %f stepArray %f\n',step1,step1Array);
%end
%J =temp * (1 / (2 * m));

% =========================================================================

end
