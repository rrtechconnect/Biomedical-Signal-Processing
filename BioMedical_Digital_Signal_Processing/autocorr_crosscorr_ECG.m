clear;
clc;
f=fopen('C:\Users\REDDY\Desktop\FINAL LAB EXPERIMENTS\eeg1-c3.dat','r');
ecg=fread(f,[1 1000],'short');
fclose(f);

rxx=conv(ecg,fliplr(ecg));
disp(rxx);
figure(1);
stem(rxx,'filled');
title('autocorrelation output');
xlabel('lag index');
ylabel('amplitude');

f1=fopen('C:\Users\REDDY\Desktop\FINAL LAB EXPERIMENTS\eeg1-c4.dat','r');
ecg1=fread(f1,[1 1000],'short');
fclose(f1);

rxy=conv(ecg,fliplr(ecg1));
disp(rxy);
figure(2);
stem(rxy,'filled');
title('crosscorrelation output');
xlabel('lag index');
ylabel('amplitude');
