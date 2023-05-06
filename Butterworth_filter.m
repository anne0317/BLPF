% design of butterworth lowpass filter
clc;
clear all;
close all;
alphap=4
alphas=30
fp=800
fs=400
f=5500
ohmp=(2*pi*fp)/f
ohms=(2*pi*fs)/f
[N,wn]=buttord(ohmp,ohms,alphap,alphas)
[B,A]=butter(N,wn,'low')
t=0:0.01:pi
[h ohm]=freqz(B,A,t)
subplot(3,1,1)
plot(ohm/pi,abs(h))
grid on;
xlabel('normalized frequency')
ylabel('gain')
title('frequency response')
subplot(3,1,2)
plot(ohm/pi,20*log(abs(h)))
grid on;
xlabel('normalized frequency')
ylabel('gain in db')
title('frequency response in db')
subplot(3,1,3)
plot(ohm/pi,angle(h))
grid on;
xlabel('normalized frequency')
ylabel('phase')
title('phase response')
