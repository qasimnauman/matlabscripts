% Define the data points
x = [1, 2, 3, 4, 5];
f = [2, 4, 8, 16, 32];

% Find the index where x = 3
idx = find(x == 3);

% Compute central difference
h = 1;
derivative = (f(idx+1) - f(idx-1))/(2*h);

fprintf('The approximate derivative f''(3) = %.2f\n', derivative)