% Define x and y data points
x = [0 1 2 3 4];
y = [1 2 4 8 16];

% Number of data points
n = length(y);

% Initialize backward difference table
diff_table = zeros(n, n);
diff_table(:, 1) = y';

% Fill the backward difference table
for j = 2:n
    for i = n:-1:j
        diff_table(i, j) = diff_table(i, j-1) - diff_table(i-1, j-1);
    end
end

% Display the backward difference table
disp('Backward Difference Table:');
disp(diff_table);

% Interpolation point
xp = 3.5;
h = x(2) - x(1); % Step size
p = (xp - x(end)) / h; % Backward difference parameter

% Compute interpolated value using backward difference formula
yp = diff_table(n, 1); % Start with the first term
term = 1;

for k = 2:n
    term = term * (p + (k-2)) / (k - 1);
    yp = yp + term * diff_table(n, k);
end

% Display the interpolated result
fprintf('Interpolated value at x = %.2f is y = %.4f\n', xp, yp);
