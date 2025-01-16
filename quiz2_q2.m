% Define the integrand function
f = @(x) 1./(1 + x.^2);

% Using Simpson's 1/3 rule
n = 100;  % must be even
h = 1/n;
x = 0:h:1;
y = f(x);

% Simpson's 1/3 formula coefficients:
coeff = ones(1,n+1);    % Initialize coefficients
coeff(2:2:end-1) = 4;   % Multiply middle points by 4
coeff(3:2:end-2) = 2;   % Multiply every other middle point by 2

% Calculate integral
integral = (h/3) * sum(coeff.*y);

fprintf('Approximate value using Simpson''s 1/3 rule = %.6f\n', integral);
fprintf('True value (pi/4) = %.6f\n', pi/4);