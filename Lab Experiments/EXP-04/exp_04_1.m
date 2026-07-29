clc; clear; close all;
bandwidth=10e6; rb_size=180e3;
total_RB=floor(bandwidth/rb_size);
users=1:6; base=floor(total_RB/length(users));
alloc=base*ones(1,length(users));
alloc(1:mod(total_RB,length(users)))=alloc(1:mod(total_RB,length(users)))+1;
util=(alloc/total_RB)*100;
subplot(2,1,1); stem(users,alloc,'filled'); grid on
subplot(2,1,2); plot(users,util,'-o'); grid on