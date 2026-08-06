clc;
clear;
close all;

% Number of users
users = [20 40 60 80 100];

latency = zeros(size(users));
throughput = zeros(size(users));9
resource = zeros(size(users));

for i=1:length(users)

    U = users(i);

    % Random mobility speed (km/hr)
    speed = 10 + rand()*100;

    % Random traffic demand
    traffic = 50 + rand()*100;

    % Latency Model
    latency(i) = 5 + 0.2*U + 0.03*speed;

    % Throughput Model
    throughput(i) = traffic*(100/U);

    % Resource Utilization
    resource(i) = min(100,(U/100)*100);

end

figure;

subplot(3,1,1)
plot(users,latency,'-o','LineWidth',2)
grid on
xlabel('Users')
ylabel('Latency (ms)')
title('Latency vs User Density')

subplot(3,1,2)
plot(users,throughput,'-s','LineWidth',2)
grid on
xlabel('Users')
ylabel('Throughput (Mbps)')
title('Throughput vs User Density')

subplot(3,1,3)
plot(users,resource,'-d','LineWidth',2)
grid on
xlabel('Users')
ylabel('Resource Utilization (%)')
title('Resource Utilization')

disp('Simulation Completed')