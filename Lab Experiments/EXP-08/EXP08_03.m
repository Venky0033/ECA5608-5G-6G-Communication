clc;
clear;
close all;
desired = [-60 -30 0 30 60]; % Desired Steering Angle (degrees)
actual = [-58 -32 1 29 62]; % Actual Beam Direction (degrees)
error = abs(desired - actual); % Beam Direction Error
figure
plot(desired, error, 'o-', 'LineWidth', 2)
grid on
xlabel('Desired Steering Angle (Degrees)')
ylabel('Beam Direction Error (Degrees)')
title('Beam Direction Error for Different Steering Angles')