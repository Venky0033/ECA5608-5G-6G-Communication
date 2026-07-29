clc; clear; close all;
TotalSlots=8; AllocatedSlots=6;
FreeSlots=TotalSlots-AllocatedSlots;
Utilization=(AllocatedSlots/TotalSlots)*100
subplot(2,1,1); plot([1 2],[AllocatedSlots FreeSlots],'-o'); grid on
subplot(2,1,2); pie([AllocatedSlots FreeSlots]);