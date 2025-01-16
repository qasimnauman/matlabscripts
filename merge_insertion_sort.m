% Data: runtimes of insertion sort and merge sort
attributes = {'Current Loan Amount', 'Credit Score', 'Annual Income', 'Years of Credit History', ...
              'Months since last delinquent', 'Number of Open Accounts', 'Number of Credit Problems', ...
              'Current Credit Balance', 'Bankruptcies', 'Tax Liens'};
          
insertion_sort_times = [210.202911, 263.196905, 187.174265, 212.232936, 141.502959, ...
                        157.217874, 39.784873, 204.697991, 35.545532, 6.812028];

merge_sort_times = [0.189422, 0.215480, 0.190016, 0.195832, 0.189567, ...
                    0.188814, 0.176958, 0.203744, 0.190395, 0.183956];

% Create figure
figure;

% --- Subplot 1: Bar Chart ---
subplot(2,1,1);  % First chart in a 2-row grid
bar([insertion_sort_times; merge_sort_times]', 'grouped');
set(gca, 'XTickLabel', attributes, 'XTickLabelRotation', 45); % Rotate x-axis labels for readability
ylabel('Runtime (seconds)');
title('Bar Chart: Insertion Sort vs Merge Sort for Assending Order Sorting');
legend('Insertion Sort', 'Merge Sort');
grid on;

% --- Subplot 2: Line Chart ---
subplot(2,1,2);  % Second chart in a 2-row grid
plot(1:10, insertion_sort_times, '-o', 'LineWidth', 2, 'MarkerSize', 6);
hold on;
plot(1:10, merge_sort_times, '-x', 'LineWidth', 2, 'MarkerSize', 6);
set(gca, 'XTick', 1:10, 'XTickLabel', attributes, 'XTickLabelRotation', 45); % Rotate x-axis labels for readability
ylabel('Runtime (seconds)');
title('Line Chart: Insertion Sort vs Merge Sort for Assending Order Sorting');
legend('Insertion Sort', 'Merge Sort');
grid on;

% Adjust figure size for better layout
set(gcf, 'Position', [100, 100, 1200, 800]);