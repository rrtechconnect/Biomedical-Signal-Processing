clc;
clear;
f=fopen('C:\Users\REDDY\Desktop\internals\QRS-Detection-rajeev\ecg signal\ecg3.dat');
ecgdata=fread(f,[1,512],'int 32');
fclose(f);
figure(1);
subplot(2,2,1);
plot(ecgdata,'K');
title('Original signal');
n=512;
ecgdata=fft(ecgdata(1:n));
s=1/n^2
p(1)=abs(ecgdata(1)*s);
for k=2:(n/2)
    p(k)=abs(ecgdata(k))+abs(ecgdata(n+1-k)*s);
end
p((n/2)+1)=abs(ecgdata((n/2)+1)*s);
m=0:1/256:1;
subplot(2,2,2);
plot(m,p);
title('psd');

n= 1:512;
z = sin (2*pi*n*50/200);
y=z*512+ecgdata;
%Magnitude & Phase Plot
a=fft(y,512);
subplot(2,2,3); plot(abs(a)); title('magnitude plot');
subplot(2,2,4); plot(angle(a)); title('phase plot');




