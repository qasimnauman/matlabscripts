x = [1, 2, 3, 4, 5];
f = [2.0, 2.7, 3.8, 5.1, 6.8];
h = x(2) - x(1);

n = length(x);
diff_table = zeros(n, n);
diff_table(:,1) = f';

for j = 2:n
    for i = 1:(n-j+1)
        diff_table(i, j) = diff_table(i+1, j-1) - diff_table(i, j-1);
    end
end

f_prime = (1/h) * (diff_table(1,1) - (1/2) * diff_table(1,2) + (1/3) * diff_table(1,3));
disp(['First derivative at x = ', num2str(x(1)), ' is ', num2str(f_prime)]);
