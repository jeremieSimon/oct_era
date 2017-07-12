function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the
%   cost of using theta as the parameter for linear regression to fit the
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
[m, n] = size(X); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
theta_1 = [0; theta(2:n, :)];
h = X * theta;

squared_error = sum((h - y) .^ 2);
cost = (1 / (2 * m)) * squared_error;
reg = (lambda/(2 * m)) * sum(theta_1 .^ 2);
J = cost + reg;


grad_cost = (1 / m) * ((h - y)' * X);
grad_reg = (lambda / m) * theta_1;
grad = grad_cost' + grad_reg;

% =========================================================================

end
