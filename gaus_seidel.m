% A = [4, -1, 0, 0; -1, 4, -1, 0; 0, -1, 4, -1; 0, 0, -1, 3];
% b = [15; 10; 10; 10];
A = [2, 1, 1; 3, 5, 1; 2, 1, 4];
b = [5; 15; 8];
x0 = [0; 0; 0];
tol = 1e-5;
maxitr = 1;
n = length(b);
x = x0;

for k = 1:maxitr
    x_old = x;
    for i = 1:n
        sum = 0;
        for j = 1:n
            if i ~= j
                sum = sum + A(i,j) * x(j);
            end
        end
        x(i) = (b(i) - sum) / A(i,i);
    end
    
    if norm(x-x_old) < tol
        break;
    end
end
disp('Solution by Gauss-Seidel Method');
disp(x);