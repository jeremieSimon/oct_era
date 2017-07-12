function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

theta_0 = theta(1, :)
theta_1 = theta(2, :)
coeff = (alpha / m)
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    predictions_minus_y = ((X * theta) - y)';
    d_0 = predictions_minus_y * X(:, 1);
    d_1 = predictions_minus_y * X(:, 2);
    theta_0 = theta_0 - (coeff * d_0);
    theta_1 = theta_1 - (coeff * d_1);
    theta = [theta_0; theta_1];
    cost = computeCost(X, y, theta);

    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

end
