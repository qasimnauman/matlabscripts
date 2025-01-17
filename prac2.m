% % Input matrices P and Q
% P = input('Enter matrix P (e.g., [1,2;3,4]): ');
% Q = input('Enter matrix Q (e.g., [5,6;7,8]): ');
% 
% % 1. Sum of P and Q
% if size(P) == size(Q)
%     sumPQ = P + Q;
%     disp('Sum of P and Q:');
%     disp(sumPQ);
% else
%     disp('Error: P and Q must have the same size for addition.');
% end
% 
% % 2. Element-wise multiplication of P and Q
% if size(P) == size(Q)
%     elemMultPQ = P .* Q; % Use ".*" for element-wise multiplication
%     disp('Element-wise multiplication of P and Q:');
%     disp(elemMultPQ);
% else
%     disp('Error: P and Q must have the same size for element-wise multiplication.');
% end
% 
% % 3. Trace of P
% if(size(A) == size(B))
%     traceP = trace(P); % Trace is the sum of the diagonal elements
%     disp('Trace of P:');
%     disp(traceP);
% else
%     disp('Matrix is Not A Square Matrix');
% end
%     
% % 4. Check if P is symmetric and, if so, compute eigenvalues
% if issymmetric(P)
%     disp('Matrix P is symmetric.');
%     eigenvaluesP = eig(P); % Compute eigenvalues
%     disp('Eigenvalues of P:');
%     disp(eigenvaluesP);
% else
%     disp('Matrix P is not symmetric.');
% end

% Define matrix C
C = [5, 2; 2, 1];

% Initial guess vector x0
x0 = [1; 0];

% Tolerance and maximum iterations
tolerance = 1e-6;
max_iterations = 100;

% Power Method Implementation
x = x0;  % Start with the initial guess
lambda_old = 0;  % Initial eigenvalue
for k = 1:max_iterations
    % Multiply matrix C with the current vector x
    y = C * x;
    
    % Normalize the resulting vector y
    x = y / norm(y);
    
    % Compute the Rayleigh quotient for the eigenvalue
    lambda = x' * C * x;
    
    % Check for convergence
    if abs(lambda - lambda_old) < tolerance
        break;
    end
    lambda_old = lambda;  % Update the eigenvalue
end

% Display results
disp('Dominant Eigenvalue:');
disp(lambda);
disp('Corresponding Eigenvector:');
disp(x);

% Sensitivity Test: Change Initial Guess
disp('Testing Sensitivity to Initial Guess...');
x0_alt = [0; 1];  % Alternative initial guess
x = x0_alt;
lambda_old = 0;
for k = 1:max_iterations
    y = C * x;
    x = y / norm(y);
    lambda = x' * C * x;
    if abs(lambda - lambda_old) < tolerance
        break;
    end
    lambda_old = lambda;
end

disp('Dominant Eigenvalue with Alternate x0:');
disp(lambda);
disp('Corresponding Eigenvector with Alternate x0:');
disp(x);
