x = [10 20 30 40 50];
y = [0.1736 0.3420 0.5000 0.6428 0.7660];

n = length(y);

diff_table = zeros(n, n);
diff_table(:, 1) = y';

for j = 2:n
    for i = 1:n-j+1
        diff_table(i, j) = diff_table(i+1, j-1) - diff_table(i, j-1);
    end
end

disp('Forward Difference Table');
disp(diff_table);

xp = 25;
h = x(2) - x(1);
p = (xp - x(1)) / h;

yp = diff_table(1, 1);
term = 1;

for k = 2:n
    term = term * (p-(k-2)) / (k - 1);
    yp = yp + term * diff_table(1, k);
end

fprintf('Interpolated value at x = %.2f is y = %.4f\n', xp, yp);