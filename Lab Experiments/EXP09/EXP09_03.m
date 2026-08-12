clc;
clear;
close all;
antennas = [4 8 16 32 64]; % Number of Antenna Elements
gain = 10*log10(antennas); % Antenna Gain (dB)
figure
bar(antennas, gain)
grid on
xlabel('Number of Antenna Elements')
ylabel('Antenna Gain (dB)')
title('Antenna Gain for Different Antenna Array Sizes')