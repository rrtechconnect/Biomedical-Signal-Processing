close all; 
clear all;
clean=wavread('bn1.wav');
noise=wavread('noise.wav');
SNR1=10*log10(sum(clean.^2)./sum(noise.^2));
clean=wavread('bn2.wav');
noise=wavread('noise.wav');
SNR2=10*log10(sum(clean.^2)./sum(noise.^2));
SNR=(SNR1+SNR2)/2;
disp('SNR=');
disp(SNR);