clc;
clear all;
idealECG = load ('C:\Users\REDDY\Desktop\FINAL LAB EXPERIMENTS\ECGS1.DAT');
t = 1:length(idealECG);
noise = 60*sin(2*pi*t*(50/200));

fs=200;
tmax = length(idealECG)/fs;
x=1/fs:1/fs:tmax;

observation = idealECG + noise(1:length(idealECG));

plot(x,idealECG); hold on, plot(x,observation,'r');
title('Wiener filter-Ideal ECG (IdealECG) and noisy ECG (observation)');
legend('IdealECG','observation');
xlabel('time (seconds)'); ylabel('amplitude (mV)');


% estimate noise from ideal ECG
noise = observation-idealECG;

% work out how long to make FFT
N=length(observation);

% Wiener filter
Sf2=abs(fft(idealECG,N*2-1)).^2;    % Power of idealECG
Nf2=abs(fft(noise,N*2-1)).^2;       % Power of noise
Cf=fft(observation,N*2-1);          % Fourier transform of the observation signal
      
H=Sf2./(Sf2+Nf2);                   % Optimal filter (in the sense that it maximize the 
                                    % ratio of the signal power to the noise power)

Yhat=H.*Cf;                         % ECG estimate from observation and using Wiener filter

yfilt=real(ifft(Yhat));             % back to time domain

% compensate for FFT being two sided in matlab   
yfilt=yfilt(1:length(observation)); 

figure, plot(x,idealECG,'b'); 
hold on, plot(x,yfilt, 'r');
title('Wiener filter-Ideal ECG (IdealECG) and filtered observation');
legend('IdealECG','filtered observation');
xlabel('time (seconds)'); ylabel('amplitude (mV)');
