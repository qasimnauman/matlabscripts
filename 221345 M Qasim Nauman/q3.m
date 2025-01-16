sum = 0;

for i = 1:19
    if ( mod(i, 2) == 0 )
        sum = sum+i;
    end
end

disp(['Sum of even number between 1 and 20 is : ', num2str(sum)]);

square = 0;
number = 1;
while(square < 49)
    square = number*number;
    disp(['Square of ', num2str(number), ' = ', num2str(square)]);
    number = number + 1;
end

disp('This program exits the for loop when the total sum of number becomes greater than 40');
sum1 = 0;
for i = 1:19
    if ( mod(i, 2) == 0 )
        sum1 = sum1+i;
        disp(['Sum is ', num2str(sum1)]);
    end
    if (sum1>40)
        break;
    end
end