t1 = 0:0.1:4*pi;

y1 = sin(t1);
y2 = cos(t1);
y3 = t1;

plot3(y1, y2, y3, 'LineWidth', 2, 'Color', [0.1, 0.7, 0.3]);
grid on;

title('3D Parametric Plot of sin(t), cos(t), and t', 'FontSize', 14, 'FontWeight', 'bold');

% Setting limits for the axes
xlim([-2, 2]);
ylim([-2, 2]);
zlim([0, max(y3)+5]);

% Setting a custom view angle
view(60, 22.5);
