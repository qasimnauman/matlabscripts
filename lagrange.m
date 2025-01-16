x_data = [1, 2, 3, 4];
y_data = [1, 4, 9, 16];
x_val = 2.5;
n = length(x_data);
P = 0;
for i = 1:n
    L = 1;
    for j = 1:n
        if i ~= j
            L = L * (x_val - x_data(j)) / (x_data(i) - x_data(j));
        end
    end
    P = P + y_data(i) * L;
end
disp(['Interpolated value at x = ', num2str(x_val), ' is P(x) = ', num2str(P)]);

displaySum();

function displaySum()
    % Prompt user for the first number
    num1 = input('Enter the first number: ');
    
    % Prompt user for the second number
    num2 = input('Enter the second number: ');
    
    % Calculate the sum
    sumResult = num1 + num2;
    
    % Display the result
    disp(['The sum of ', num2str(num1), ' and ', num2str(num2), ' is: ', num2str(sumResult)]);
end
