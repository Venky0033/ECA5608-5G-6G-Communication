clc; clear; close all;
d=0.1:0.1:5; f=[900 3500 28000];
PL1=32.44+20*log10(f(1))+20*log10(d);
PL2=32.44+20*log10(f(2))+20*log10(d);
PL3=32.44+20*log10(f(3))+20*log10(d);
subplot(2,1,1); plot(d,PL1,d,PL2,d,PL3); grid on
subplot(2,1,2); plot(f,[PL1(10) PL2(10) PL3(10)],'-o'); grid on