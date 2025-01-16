% Data: runtimes of insertion sort and merge sort (Descending order)
attributes = {'Current Loan Amount', 'Credit Score', 'Annual Income', 'Years of Credit History', ...
              'Months since last delinquent', 'Number of Open Accounts', 'Number of Credit Problems', ...
              'Current Credit Balance', 'Bankruptcies', 'Tax Liens'};
          
insertion_sort_times_desc = [155.421430, 128.165584, 199.440180, 207.092046, 142.070106, ...
                             163.228923, 42.331581, 204.071864, 35.810190, 7.309732];

merge_sort_times_desc = [0.187057, 0.190792, 0.188873, 0.219049, 0.200061, ...
                         0.184448, 0.173049, 0.205822, 0.181422, 0.158118];

% Create figure
figure;

% --- Subplot 1: Bar Chart ---
subplot(2,1,1);  % First chart in a 2-row grid
bar([insertion_sort_times_desc; merge_sort_times_desc]', 'grouped');
set(gca, 'XTickLabel', attributes, 'XTickLabelRotation', 45); % Rotate x-axis labels for readability
ylabel('Runtime (seconds)');
title('Bar Chart: Insertion Sort (Descending) vs Merge Sort (Descending)');
legend('Insertion Sort (Descending)', 'Merge Sort (Descending)');
grid on;

% --- Subplot 2: Line Chart ---
subplot(2,1,2);  % Second chart in a 2-row grid
plot(1:10, insertion_sort_times_desc, '-o', 'LineWidth', 2, 'MarkerSize', 6);
hold on;
plot(1:10, merge_sort_times_desc, '-x', 'LineWidth', 2, 'MarkerSize', 6);
set(gca, 'XTick', 1:10, 'XTickLabel', attributes, 'XTickLabelRotation', 45); % Rotate x-axis labels for readability
ylabel('Runtime (seconds)');
title('Line Chart: Insertion Sort (Descending) vs Merge Sort (Descending)');
legend('Insertion Sort (Descending)', 'Merge Sort (Descending)');
grid on;

% Adjust figure size for better layout
set(gcf, 'Position', [100, 100, 1200, 800]);