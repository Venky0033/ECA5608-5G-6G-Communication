clc; clear; close all;
d=2; f=[900 3500 28000];
PL=32.44+20*log10(f)+20*log10(d);
subplot(2,1,1); plot(f,PL,'-o'); grid on
subplot(2,1,2); bar(PL); grid on