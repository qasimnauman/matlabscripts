% Define x and y data
x = 0:0.1:10;        % x values from 0 to 10 with step size 0.1
y = x.^2;            % y values as x squared
g = sqrt(x);         % y values as the square root of x
h = sin(x);          % y values as the sine of x

% Create the plot
figure;              % Open a new figure window

% Plot multiple curves
plot(x, y, 'LineWidth', 2, 'Color', [0, 0.5, 0.8]); % Plot x^2
hold on;             % Hold the current figure to add more plots
plot(x, g, 'LineWidth', 2, 'Color', [0.8, 0.1, 0.1]); % Plot sqrt(x)
plot(x, h, 'LineWidth', 2, 'Color', [0.1, 0.7, 0.3]); % Plot sin(x)
hold off;            % Release the hold

% Add labels and title
xlabel('X-axis: Values from 0 to 10', 'FontSize', 12);
ylabel('Y-axis: Function Values', 'FontSize', 12);
title('Simple Plot of x^2, sqrt(x), and sin(x)', 'FontSize', 14, 'FontWeight', 'bold');

% Add grid and customize axes
grid on;
xlim([0, 10]);       % Set x-axis limits
ylim([-1.5, 110]);   % Set y-axis limits (adjust for x^2)

% Add annotations
text(2, 10, 'x^2 Curve', 'FontSize', 10, 'Color', [0, 0.5, 0.8]);
text(2, 1, 'sqrt(x) Curve', 'FontSize', 10, 'Color', [0.8, 0.1, 0.1]);
text(7, 0.5, 'sin(x) Curve', 'FontSize', 10, 'Color', [0.1, 0.7, 0.3]);

% Add a legend
legend('x^2', 'sqrt(x)', 'sin(x)', 'Location', 'northwest');

% Input matrix A
A = input('Enter matrix A (e.g., [1,2,3; 4,5,6]): ');

% Input matrix B
B = input('Enter matrix B (e.g., [1,4; 2,5; 3,6]): ');

% Check if multiplication is possible
if size(A, 2) == size(B, 1)
    % Perform matrix multiplication
    AmulB = A * B;

    % Display the result
    disp('A * B:');
    disp(AmulB);
else
    % Display an error message if multiplication is not possible
    disp('Error: Number of columns in A must equal the number of rows in B for multiplication.');
end


disp('Transpose of A:');
disp(transposeA);

disp('A*B');
disp(AmulB);

M = [4 2 1; 3 5 7; 8 9 6];

% Check if the determinant is non-zero
determinant = det(M);
if determinant ~= 0
    disp('The matrix M is invertible.');
    
    % Compute the inverse
    M_inverse = inv(M);
    
    % Display the inverse
    disp('Inverse of M:');
    disp(M_inverse);
else
    disp('The matrix M is not invertible.');
end