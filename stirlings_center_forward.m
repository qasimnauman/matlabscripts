x = [1, 2, 3, 4, 5];  % x-values
f = [2.0, 2.7, 3.8, 5.1, 6.8];  % f(x)-values
h = x(2) - x(1);  % Step size

n = length(x);
diff_table = zeros(n, n);
diff_table(:, 1) = f';

% Construct the forward difference table
for j = 2:n
    for i = 1:(n-j+1)
        diff_table(i, j) = diff_table(i+1, j-1) - diff_table(i, j-1);
    end
end

center = ceil(n / 2);
f_prime = (1 / h) * (diff_table(center, 2) - (1/6) * diff_table(center - 1, 3));
disp(['First derivative at x = ', num2str(x(center)), ' is ', num2str(f_prime)]);