% Input data points
x_data = [5, 8, 11, 14, 17];
y_data = [1, 4, 9, 16, 25];
x_val = 4.4; % Point to interpolate

% ------------ Lagrange Interpolation ------------
lagrange_start = tic; % Start timing
n = length(x_data);
P_lagrange = 0;c
lagrange_iterations = 0;

for i = 1:n
    L = 1;
    for j = 1:n
        lagrange_iterations = lagrange_iterations + 1;
        if i ~= j
            L = L * (x_val - x_data(j)) / (x_data(i) - x_data(j));
        end
    end
    P_lagrange = P_lagrange + y_data(i) * L;
end
lagrange_time = toc(lagrange_start);

% Display Lagrange result
disp(['Lagrange Interpolation: P(', num2str(x_val), ') = ', num2str(P_lagrange)]);

% ------------ Stirling Interpolation ------------
if length(x_data) < 3
    error('Stirling interpolation requires at least 3 data points.');
end

stirling_start = tic; % Start timing
h = x_data(2) - x_data(1); % Step size
n = length(x_data);
diff_table = zeros(n, n);
diff_table(:, 1) = y_data';

% Construct the forward difference table
for j = 2:n
    for i = 1:(n-j+1)
        diff_table(i, j) = diff_table(i+1, j-1) - diff_table(i, j-1);
    end
end

center = ceil(n / 2); % Central point
stirling_iterations = 0;
f_prime = (1 / h) * (diff_table(center, 2) - (1/6) * diff_table(center - 1, 3));
stirling_time = toc(stirling_start);

% Display Stirling result
disp(['Stirling Interpolation: First derivative at x = ',' is ', num2str(f_prime)]);

% ------------ Comparison ------------
% Display iteration counts and execution times
fprintf('\nComparison of Methods:\n');
fprintf('Lagrange Method: Iterations = %d, Execution Time = %.6f seconds\n', lagrange_iterations, lagrange_time);
fprintf('Stirling Method: Iterations = %d, Execution Time = %.6f seconds\n', stirling_iterations, stirling_time);

% Plot execution time comparison
time_values = [lagrange_time, stirling_time];
methods = {'Lagrange', 'Stirling'};
figure;
bar(time_values);
set(gca, 'xticklabel', methods);
title('Execution Time Comparison');
ylabel('Time (seconds)');
xlabel('Method');
grid on;