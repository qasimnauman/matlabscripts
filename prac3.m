% % % Define the range of x
% % % x = 0:0.1:10;
% % % 
% % % Define the functions
% % % f = exp(-x); % f(x) = e^(-x)
% % % g = x.^2;    % g(x) = x^2
% % % 
% % % Handle domain restriction for h(x) = log(x)
% % % h = log(x);
% % % h(x == 0) = NaN; % Set log(0) to NaN to avoid issues with plotting
% % % 
% % % Plot the functions
% % % figure;
% % % plot(x, f, 'r-', 'LineWidth', 2); hold on;
% % % plot(x, g, 'b--', 'LineWidth', 2);
% % % plot(x, h, 'g:', 'LineWidth', 2);
% % % 
% % % Add legend, title, and labels
% % % legend('f(x) = e^{-x}', 'g(x) = x^2', 'h(x) = log(x)', 'Location', 'northwest');
% % % title('Plots of f(x), g(x), and h(x)');
% % % xlabel('x');
% % % ylabel('y');
% % % grid on;
% % % hold off;
% % 
% % 
% % % Define matrix A
% % A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
% % 
% % % Compute eigenvalues and eigenvectors
% % [eigenvectors, eigenvalues] = eig(A);
% % 
% % % Display results
% % disp('Eigenvalues of A:');
% % disp(diag(eigenvalues)); % Extract the diagonal (eigenvalues)
% % disp('Eigenvectors of A:');
% % disp(eigenvectors);
% % 
% % % Check if determinant of A is zero
% % if det(A) == 0
% %     disp('Matrix A is singular.');
% % else
% %     disp('Matrix A is non-singular.');
% % end
% % 
% % 
% % % Create matrix B by adding 5 to all elements of A
% % B = A + 5;
% % 
% % % Compute A * B
% % AB = A * B;
% % 
% % % Display results
% % disp('Matrix B:');
% % disp(B);
% % disp('Matrix A * B:');
% % disp(AB);
% 
% % Data points
% x = [2, 3, 4, 5]; % x values
% f = [8, 14, 22, 32]; % f(x) values
% 
% n = length(x);
% h = x(2) - x(1); % Step size
% 
% % Create forward difference table
% diff_table = zeros(n, n);
% diff_table(:, 1) = f';
% 
% for j = 2:n
%     for i = 1:(n - j + 1)
%         diff_table(i, j) = diff_table(i + 1, j - 1) - diff_table(i, j - 1);
%     end
% end
% 
% % Newton's Forward Difference formula for f'(3)
% % f'(x) = (1/h) * [?f(x) - (1/2)*?^2f(x) + (1/3)*?^3f(x) ...]
% p = (3 - x(1)) / h; % p for f'(3)
% f_prime = (1 / h) * (diff_table(1, 2) - (1 / 2) * diff_table(1, 3) + (1 / 3) * diff_table(1, 4));
% 
% % Display forward difference table and result
% disp('Forward Difference Table:');
% disp(diff_table);
% fprintf('The first derivative f''(3) is %.4f\n', f_prime);

% Data points
x = [5, 6, 7, 8]; % x values
f = [25, 36, 49, 64]; % f(x) values

n = length(x);
h = x(2) - x(1); % Step size

% Create forward difference table
diff_table = zeros(n, n);
diff_table(:, 1) = f';

for j = 2:n
    for i = 1:(n - j + 1)
        diff_table(i, j) = diff_table(i + 1, j - 1) - diff_table(i, j - 1);
    end
end

% Bessel's formula for f'(5.5)
% f'(x) = 1/h * [?f_n-1/2 - (1/2)?^2f_n-1/2 + (1/6)?^3f_n-1/2 - ...]
f_prime = (1 / h) * (diff_table(3, 1) - (1 / 2) * diff_table(2, 2) + (1 / 6) * diff_table(2, 3));

% Display forward difference table and result
disp('Forward Difference Table:');
disp(diff_table);
fprintf('The first derivative f''(5.5) is %.4f\n', f_prime);
