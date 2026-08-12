clc;
clear;
close all;
% Time intervals
t = 1:10;
% Actual and Predicted Traffic (Mbps)
Actual = [50 55 60 62 68 70 75 80 85 90];
Predicted = [49 54 61 63 67 71 74 81 84 89];
% Squared Error
SqError = (Actual - Predicted).^2;
% Mean Squared Error
MSE = mean(SqError);
disp(['Mean Squared Error (MSE) = ', num2str(MSE)])
figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(t,SqError,'-o','LineWidth',2)
title('Squared Error of AI Traffic Prediction')
xlabel('Time Interval')
ylabel('Squared Error')
grid on
% -------- Graph 2 --------
subplot(2,1,2)
bar([MSE])
title('Mean Squared Error (MSE)')
xlabel('AI Prediction Model')
ylabel('MSE')
grid on