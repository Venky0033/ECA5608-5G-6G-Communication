clc; clear; close all;
SNR_dB=0:2:20; SNR=10.^(SNR_dB/10);
Reliability=1-exp(-SNR/10);
noise_power=1./SNR;
subplot(2,1,1); plot(SNR_dB,Reliability,'-o'); grid on
subplot(2,1,2); plot(SNR_dB,noise_power,'-s'); grid on