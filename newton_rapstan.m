f = @(x) x^3 - x - 2;
df = @(x) 3*x^2 - 1;  % Corrected typo here

% Initial guess and parameters
x0 = 1.5;
tol = 1e-6;
max_iter = 100;
iteration = 0;

% Newton-Raphson Method Iterations
for i = 1:max_iter
    iteration = iteration + 1;
    x1 = x0 - (f(x0) / df(x0));
    
    % Display iteration information
    disp(['Iteration ', num2str(iteration), ': x = ', num2str(x1)]);
    
    % Check for convergence
    if abs(x1 - x0) < tol
        break;
    end
    
    % Update x0 for the next iteration
    x0 = x1;
end

root = x1;
disp(['Final Root (Newton-Raphson): ', num2str(root)]);

% Highlight the root on the plot
plot(root, f(root), 'gx', 'MarkerSize', 10, 'LineWidth', 2, 'DisplayName', 'Root');
legend show; % Show legend with all iterations

hold off;
