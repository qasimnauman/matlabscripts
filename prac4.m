% % % % % Define the matrix
% % % % C = [5, 2; 2, 1]; % Replace with the actual matrix if different
% % % % 
% % % % % Initial guess vector
% % % % x0 = [1; 0]; % Replace with another guess vector for sensitivity analysis
% % % % 
% % % % % Parameters for Power Method
% % % % tolerance = 1e-6; % Convergence criterion
% % % % max_iterations = 100;
% % % % 
% % % % % Power Method Implementation
% % % % x = x0;
% % % % lambda_old = 0; % Initial eigenvalue
% % % % for k = 1:max_iterations
% % % %     % Multiply matrix by the current vector
% % % %     y = C * x;
% % % %     
% % % %     % Normalize the resulting vector
% % % %     x = y / norm(y);
% % % %     
% % % %     % Compute Rayleigh quotient (approximate eigenvalue)
% % % %     lambda = x' * C * x;
% % % %     
% % % %     % Check for convergence
% % % %     if abs(lambda - lambda_old) < tolerance
% % % %         break;
% % % %     end
% % % %     lambda_old = lambda;
% % % % end
% % % % 
% % % % % Display the results
% % % % disp('Dominant Eigenvalue:');
% % % % disp(lambda);
% % % % disp('Corresponding Eigenvector:');
% % % % disp(x);
% % % % fprintf('Converged in %d iterations.\n', k);
% % % % 
% % % % % Sensitivity to Initial Guess
% % % % disp('Testing sensitivity with an alternate initial guess...');
% % % % x0_alt = [0; 1]; % Alternate initial guess
% % % % x = x0_alt;
% % % % lambda_old = 0;
% % % % for k = 1:max_iterations
% % % %     y = C * x;
% % % %     x = y / norm(y);
% % % %     lambda = x' * C * x;
% % % %     if abs(lambda - lambda_old) < tolerance
% % % %         break;
% % % %     end
% % % %     lambda_old = lambda;
% % % % end
% % % % 
% % % % disp('Dominant Eigenvalue with alternate initial guess:');
% % % % disp(lambda);
% % % % disp('Corresponding Eigenvector with alternate initial guess:');
% % % % disp(x);
% % % 
% % % 
% % % % Data points
% % % x = [2, 3, 4, 5];
% % % f = [8, 14, 22, 32];
% % % 
% % % % Interpolation point
% % % xp = 3.5;
% % % 
% % % % Gauss Interpolation Formula
% % % n = length(x);
% % % h = x(2) - x(1);
% % % 
% % % % Compute central differences
% % % diff_table = zeros(n, n);
% % % diff_table(:, 1) = f';
% % % 
% % % for j = 2:n
% % %     for i = 1:(n - j + 1)
% % %         diff_table(i, j) = diff_table(i + 1, j - 1) - diff_table(i, j - 1);
% % %     end
% % % end
% % % 
% % % % Central differences for Gauss
% % % s = (xp - x(ceil(n/2))) / h; % Central value
% % % yp = diff_table(ceil(n/2), 1); % Start with first term
% % % term = 1;
% % % 
% % % for k = 1:(n - 1)
% % %     term = term * (s - (k - 1)) / k;
% % %     yp = yp + term * diff_table(ceil(n/2) - floor(k/2), k + 1);
% % % end
% % % 
% % % disp('Gauss Interpolation Result:');
% % % fprintf('f(%.2f) = %.4f\n', xp, yp);
% % 
% % 
% % 
% % % Data points
% % x = [5, 6, 7, 8];
% % f = [25, 36, 49, 64];
% % 
% % % Interpolation point
% % xp = 7.5;
% % 
% % % Step size
% % h = x(2) - x(1);
% % 
% % % Compute differences
% % n = length(x);
% % diff_table = zeros(n, n);
% % diff_table(:, 1) = f';
% % 
% % for j = 2:n
% %     for i = 1:(n - j + 1)
% %         diff_table(i, j) = diff_table(i + 1, j - 1) - diff_table(i, j - 1);
% %     end
% % end
% % 
% % % Stirling's Interpolation Formula
% % s = (xp - x(ceil(n/2))) / h;
% % yp = diff_table(ceil(n/2), 1);
% % term = 1;
% % 
% % for k = 1:(n - 1)
% %     if mod(k, 2) == 1
% %         term = term * (s^2 - (floor(k / 2))^2) / k;
% %         yp = yp + term * diff_table(ceil(n/2) - floor((k - 1) / 2), k + 1);
% %     else
% %         term = term * (s - (k / 2)) / k;
% %         yp = yp + term * diff_table(ceil(n/2) - (k / 2), k + 1);
% %     end
% % end
% % 
% % disp('Stirling Interpolation Result:');
% % fprintf('f(%.2f) = %.4f\n', xp, yp);
% 
% 
% x = 0:0.1:10; % Define range
% f = exp(-x);
% g = x.^2;
% h = log(x);
% h(x == 0) = NaN; % Handle log(0)
% 
% figure;
% plot(x, f, 'r-', 'LineWidth', 2); hold on;
% plot(x, g, 'b--', 'LineWidth', 2);
% plot(x, h, 'g:', 'LineWidth', 2);
% legend('f(x) = e^{-x}', 'g(x) = x^2', 'h(x) = log(x)');
% xlabel('x'); ylabel('y');
% title('Plot of f(x), g(x), and h(x)');
% grid on; hold off;


% Define matrix A
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% (i) Determinant and invertibility
det_A = det(A);
if det_A == 0
    disp('Matrix A is singular and not invertible.');
else
    inv_A = inv(A);
    disp('Matrix A is invertible.');
    disp('Inverse of A:');
    disp(inv_A);
end

% (ii) Compute the trace
trace_A = trace(A);
disp(['Trace of A: ', num2str(trace_A)]);

% (iii) Create new matrix B and compute A * B
B = 2 * A;
AB = A * B;
disp('Matrix B:');
disp(B);
disp('Product A * B:');
disp(AB);

% (iv) Solve the linear system A * x = b
b = [1; 2; 3];
if det_A ~= 0
    x = A \ b;
    disp('Solution to A * x = b:');
    disp(x);
else
    disp('Cannot solve A * x = b because A is singular.');
end
