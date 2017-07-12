function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
[m, n] = size(X);

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% loss function
h = sigmoid(X * theta);
logist = ((-y') * log(h)) - ((1 - y') * log(1 - h));
loss = logist / m;

% reg function
reg = (lambda/ (2 * m)) * (ones(n-1, 1))' * (theta(2:n, :) .^ 2);
J = loss + reg;

theta_1 = [0; theta(2:n, :)];
reg = (lambda/m) .* theta_1;
grad = (1/m) * ((h - y)' * X);
grad = grad' + reg;
% =============================================================

end