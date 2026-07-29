clc; clear; close all;
f=[900 3500 28000]; d=2;
PL=32.44+20*log10(f)+20*log10(d);
subplot(2,1,1); plot(f,PL,'-o'); grid on
subplot(2,1,2); plot(1:3,PL,'-s'); grid on