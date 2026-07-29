clc; clear; close all;
total_RB=50; users=1:5; alloc=[12 10 9 8 11];
util=(alloc/total_RB)*100;
subplot(2,1,1); plot(users,alloc,'-o'); grid on
subplot(2,1,2); plot(users,util,'-s'); grid on