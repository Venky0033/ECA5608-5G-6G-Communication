clc; clear; close all;
FrameTime=4.615; Slots=8;
SlotDuration=FrameTime/Slots;
t=0:SlotDuration:FrameTime;
subplot(2,1,1); stem(t,ones(size(t)),'filled'); grid on
title('TDMA Time Slot Structure');
subplot(2,1,2); plot(t,ones(size(t)),'-o'); grid on
title('Continuous View of Slot Allocation');