clc; clear; close all;
Ps=1; Pn=[0.1 0.05 0.01];
Users=1:3;
SNR=10*log10(Ps./Pn);
disp([Users' Pn' SNR'])
figure; bar(Users,SNR); grid on
xlabel('Users'); ylabel('SNR (dB)');
title('FDMA SNR');