% A = [4, -1, 0, 0; -1, 4, -1, 0; 0, -1, 4, -1; 0, 0, -1, 3];
% b = [15; 10; 10; 10];
A = [2, 1, 1; 3, 5, 1; 2, 1, 4];
b = [5; 15; 8];
x0 = [0; 0; 0];
tol = 1e-5;
maxitr = 100;
n = length(b);
x = x0;
for k = 1:maxitr
    x_new = zeros(n, 1);
    for i = 1:n
        sum = 0;
        for j = 1:n
            if i ~= j
                sum = sum + A(i,j) * x(j);
            end
        end
        x_new(i) = (b(i) - sum) / A(i,i);
    end
    
    if norm(x_new - x) < tol
        break;
    end
    x = x_new;
end
disp('Solution by Jacobi Method');
disp(x);