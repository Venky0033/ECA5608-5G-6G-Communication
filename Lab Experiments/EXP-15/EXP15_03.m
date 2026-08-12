clc;
clear;
close all;
% Time intervals
t = 1:10;
% Network Throughput (Mbps)
Throughput = [120 135 150 165 180 195 210 225 240 255];
% Network Utilization (%)
Utilization = [60 65 70 74 78 82 86 90 94 98];
figure
% -------- Graph 1 --------
subplot(2,1,1)
plot(t,Throughput,'-o','LineWidth',2)
title('AI-Based Network Throughput')
xlabel('Time Interval')
ylabel('Throughput (Mbps)')
grid on

% -------- Graph 2 --------
subplot(2,1,2)
plot(Throughput,Utilization,'-s','LineWidth',2)
title('Throughput vs Network Utilization')
xlabel('Network Throughput (Mbps)')
ylabel('Network Utilization (%)')
grid on
disp('Time Throughput(Mbps) Utilization(%)')
disp([t' Throughput' Utilization'])