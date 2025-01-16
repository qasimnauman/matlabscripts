% Part 1
numbers = input('Enter five numbers as an array in the following format [1,2,3,4,5]: ');

if length(numbers) ~= 5
    disp('Please enter exactly five numbers.');
else
    s_number = sort(numbers, 'descend');
    
    avg_high_3 = mean(s_number(1:3));
    
    disp(['The entered number are : ', num2str(numbers)]);
    disp(['Numbers sorted in descending order are : ', num2str(s_number)]);
    disp(['Avergae of the largest 3 numbers : ', num2str(avg_high_3)]);
end


% Part 2
x = 0:0.5:5;
y = 0:0.5:5;

z1_values = [];
z2_values = [];
x_values = [];
y_values = [];

for i = 1:length(x)
    for j = 1:length(y)
        x_values(end + 1) = x(i);
        y_values(end + 1) = y(j);
        z1_values(end + 1) = x(i)^2 + 2 * y(j)^2;
        z2_values(end + 1) = 2 * x(i)^2 - y(j)^2;
    end
end

figure;

subplot(1, 2, 1);
plot3(x_values, y_values, z1_values, 'LineWidth', 1, 'Color', [0.1, 0.7, 0.3]);
title('z_1 = x^2 + 2y^2');
xlabel('x');
ylabel('y');
zlabel('z_1');

subplot(1, 2, 2);
plot3(x_values, y_values, z2_values, 'LineWidth', 1, 'Color', [0.1, 0.7, 0.3]);
title('z_2 = 2x^2 - y^2');
xlabel('x');
ylabel('y');
zlabel('z_2');
