function [theta, J_history] = gradientDescent(x, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % transpose the value of temp because column times row = total
    temp = (x * theta - y)';
    %theta=theta - (alpha * (1/m) * temp * x)'
    
    theta(1) = theta(1) - alpha * (1/m) * sum(temp);
    theta(2) = theta(2) - alpha * (1/m) * temp * x(:,2);

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(x, y, theta);

end

end