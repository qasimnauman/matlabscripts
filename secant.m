f = @(x) x^3 - x - 2;

% Initial guesses and parameters for Secant Method
x0 = 1;
x1 = 2;
tol = 1e-6;
max_iter = 100;
iteration = 0;

% Set up figure for plotting
figure;
hold on;
fplot(f, [0, 3], 'DisplayName', 'f(x) = x^3 - x - 2');  % Plot f(x) over the range
xlabel('x');
ylabel('f(x)');
title('Secant Method Iterations');
grid on;
legend show;

% Execute Secant method and plot iterations
for i = 1:max_iter
    iteration = iteration + 1;
    x2 = x1 - ((f(x1) * (x1 - x0)) / (f(x1) - f(x0)));
    
    % Display each iteration
    disp(['Iteration ', num2str(iteration), ': x = ', num2str(x2)]);
    
    % Plot the current approximation as a point
    plot(x2, f(x2), 'ro', 'DisplayName', ['Iteration ', num2str(iteration)]);
    
    % Check for convergence
    if abs(x2 - x1) < tol
        break;
    end
    
    % Update variables for next iteration
    x0 = x1;
    x1 = x2;
end

root = x2;
disp(['Final Root (Secant): ', num2str(root)]);

% Highlight the root on the plot
plot(root, f(root), 'gx', 'MarkerSize', 10, 'LineWidth', 2, 'DisplayName', 'Root');
legend show;  % Show legend with all iterations

hold off;
