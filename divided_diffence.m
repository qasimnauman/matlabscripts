% x = [10 20 30 40 50];
% y = [0.1736 0.3420 0.5000 0.6428 0.7660];

x = [0 1 2 3];
y = [2 4 8 16];

n = length(y);

div_table = zeros(n, n);
div_table(:, 1) = y';

for j = 2:n
    for i = 1:n-j+1
        div_table(i, j) = (div_table(i+1, j-1) - div_table(i, j-1)) / (x(i+j-1) - x(i));
    end
end

disp('Backward Difference Table');
disp(div_table);

xp = 2.5;

yp = div_table(n, 1);
term = 1;

for k = 2:n
    term = term * (xp - x(k-1));
    yp = yp + term * div_table(1, k);
end

fprintf('Interpolated value at x = %.2f is y = %.4f\n', xp, yp);