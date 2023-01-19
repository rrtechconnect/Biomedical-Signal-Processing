%AZTEC COMPRESSION ON ECG
close all;
clear all;
clc;
ecg = load('C:\Users\REDDY\Desktop\internals\QRS-Detection-rajeev\ecg signal\ecg2x60.dat');

fs = 200; 
a=length(ecg);
time = [1 : a]/fs;
figure;
plot(ecg);
axis tight;
ylabel('ECG Amplitude');
xlabel('Time in seconds');
title('Original signal used for AZTEC DATA COMPRESSION');
ln=0; 
i=1;
j=1;
for i=1:a-1
vmin=ecg(i);vmax=vmin;
vmax1=ecg(i);vmin1=vmax1;
if ln<=50
ln=ln+1;
i=i+1;
if ecg(i)>vmax
vmax1=ecg(i);
elseif ecg(i)<vmin
vmin1=ecg(i);
else
break;
end
if (vmax1-vmin1)>0.7
ecg1(j)=ln-1;
j=j+1;
v(j)=(vmax+vmin)/2;
ln=0;
else
vmax=vmax1;
vmin=vmin1;
end
else
ecg1(j)=ln-1;
v(j)=(vmax+vmin)/2;
ln=0;
j=j+1;
end
end
disp('amplitudes=');
amplitudes=v
disp('length=');
%figure; plot(v); title('compressed ECG');
for(i=1:length(v))
v1(i)=2*v(i);
end
z=1;
n=1;
for m=1:length(v1)-2
len=ecg1(m);
recaz(z)=v1(m);
for i=1:len
recaz(z+i)=recaz(z);
end
%n=n+1;
z=z+len;
end
figure; plot(recaz); 
axis tight;
ylabel('ECG Amplitude');
xlabel('Time in seconds');
title('AZTEC-Reconstructed ECG');