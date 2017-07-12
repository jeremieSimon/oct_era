function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
  X_1 = [];
  X_2 = [];
  for iter=1:length(X)
    if (y(iter) == 1)
      X_1 = [X_1; X(iter, :)];
    else
      X_2 = [X_2; X(iter, :)];
    endif
  end

  plot(X_1(:, 1), X_1(:, 2), 'k+')
  hold on;
  plot(X_2(:, 1), X_2(:, 2), 'ko')






% =========================================================================



hold off;

end
