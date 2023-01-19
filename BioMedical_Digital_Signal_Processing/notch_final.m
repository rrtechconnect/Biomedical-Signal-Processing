
clear;
clc;
f=fopen('C:\Users\REDDY\Desktop\internals\QRS-Detection-rajeev\ecg signal\ecg3.dat');
ecg=fread(f,[1,300],'short');
fclose(f);
figure(1);
subplot(3,1,1);
plot(ecg,'k');
xlabel('time');
ylabel('amp');
title('original ecg signal');
grid on;
% addition of noise
t=1:300;
y=150*sin(2*pi*t*(50/200));
x=ecg+y;
subplot(3,1,2);
plot(x,'k');
xlabel('time');
ylabel('amp');
grid on;
title('noised ecg');
%filtered ecg using notch filter
b=[1 1 1];
a=3;
y=filter(b,a,x);
subplot(3,1,3);
plot(y,'k');
xlabel('time');
ylabel('amp');
title('filtered ecg output from notch filter');
grid on;
%frequency response of the filter
figure(2);
fs=150;
freqz(b,a,512,fs);
figure(3);
subplot(2,1,1);
zplane(b,a);
title('pole-zero plot for FIR-NOTCH FILTER');
grid on;
Fs = 200;   
t = 0:1/Fs:1;
x = y;
nfft = 2^nextpow2(length(x));
Pxx = abs(fft(x,nfft)).^2/length(x)/Fs;
% Create a single-sided spectrum
Hpsd = dspdata.psd(Pxx(1:length(Pxx)/2),'Fs',Fs); 
subplot(2,1,2);
plot(Hpsd);