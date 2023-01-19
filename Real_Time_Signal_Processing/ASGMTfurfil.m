
clc;
clear all;
wpa=input('enter the paasband edge freq in hz=');
wsa=input('enter the stopband edge freq in hz=');
ws1=input('enter the sampling freq in hz=');
%calc trans bw, trans band tb,order of the filter
wpd=2*pi*wpa/ws1;
wsd=2*pi*wsa/ws1;
tb=wsd-wpd;
N=ceil(6.6*pi/tb);
disp('N=');
disp(N);
wc=(wsd+wpd)/2;
%compute the normalized cut-off freq
wc=wc/pi;
%calc n plot the window
hw=hamming(N+1);
stem(hw);
title('fir filter window seq-hamming window');
%find h(n) using fir 
h=fir1(N,wc,hamming(N+1));
fp=fi(h);
disp('fixed point');
disp(fp);
%fpf=fp-h;
%disp('error prop');
%disp(fpf);
%plot the freq response
figure(2);
[m,w]=freqz(h,1,128);
mag=20*log10(abs(m));
%a=fi(mag);
plot(ws1*w/(2*pi),mag);
title('fir filter freq resp');
grid;
