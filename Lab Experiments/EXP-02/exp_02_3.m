clc; clear; close all;
Users=1:8; TotalSlots=5;
Alloc=zeros(1,8); Alloc(1:TotalSlots)=1;
Blocked=1-Alloc;
subplot(2,1,1); stem(Users,Alloc,'filled'); grid on
subplot(2,1,2); plot(Users,Alloc,'-o',Users,Blocked,'-s'); grid on