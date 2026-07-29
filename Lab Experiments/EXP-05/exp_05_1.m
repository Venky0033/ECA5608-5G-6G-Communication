clc; clear; close all;
SNR_dB=0:2:20; SNR=10.^(SNR_dB/10);
Nt=2; Nr=2; BER=zeros(size(SNR));
for i=1:length(SNR)
bits=randi([0 1],10000,1); sym=2*bits-1;
H=(randn(Nr,Nt)+1j*randn(Nr,Nt))/sqrt(2);
noise=(randn(Nr,10000)+1j*randn(Nr,10000))/sqrt(2*SNR(i));
tx=H(1,1)*sym'+noise(1,:); rx=real(tx)>0;
BER(i)=mean(rx'~=bits); end
subplot(2,1,1); semilogy(SNR_dB,BER,'-o'); grid on
subplot(2,1,2); plot(SNR_dB,1-BER,'-s'); grid on