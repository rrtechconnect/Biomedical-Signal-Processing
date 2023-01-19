% Author : RAMA REDDY R
% Code Description : Analysis of Bionomadix logger signal in MATLAB.
% Date : 7/17/2017
clc;
close all;
%%%%%
%Ads1292rS32 = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\Rama-ADS1292R\Rama-S32.csv');
%data2ADS1292R = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\Rama-ADS1292R\Rama-S32-1.csv');
%Ads1292rKJ32 = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\Rama-ADS1292R\Ram-KJ32.csv');
%data3ADS1292R = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\VishwanathECG1.csv');
%data3ADS1292R = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\vishwanathECG2.csv');
%Ads1292rKJ32 = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\Rama-ADS1292R\Rama-KJ52.csv');
%Ads1292rS32 = load(ma-Reddy-R Textile material\Conference-IEEE-Sensors\Rama-ADS1292R\Rama-S52.csv');

%%Biopac mp36
%dataAgAgClBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\Akashay-AgAgCl-Dormo-leadI-LIMB.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\Akashay-KJ32-Lead-I-2000g-1000sps.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\Akashay-KJ52-Lead-I-5000g-1000sps.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\Akashay-S32-Lead-I-5000g-1000sps.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\Akashay-S52-Lead-I-2000g-1000sps.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\knit-jersy-5-2-vishwanath-test-special.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\knit-jersy-5-2-vishwanath-test-special-500g-35hzc.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\knit-jersy-5-2-vishwanath-test-special-500g-200sps35hzc.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\knit-jersy-5-2-vishwanath-test-special-500g-200sps-50hz-35hzc.mat');


%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\lead-II-RAM-KJ32-5000g.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\lead-II-RAM-KJ-5000g.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\lead-II-RAM-Sil32.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\lead-II-RAM-Sil32-5000g.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\lead-II-RAM-Sil52-5000g.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\lead-I-RAM-KJ32.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\lead-I-RAM-KJ52.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\lead-I-RAM-Sil32.mat');

%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\Silver-52-ram-2000g-1000sps-35hzc-.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\Silver-5-2-vishwanath-test-special-2000g-1000sps-35hzc-.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ttdbt\Silver-5-2-vishwanath-test-special-2000g-1000sps-35hzc.mat');

%data1ADS1292R = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\Ram-KJ32\logVISHWANATHCHEST.csv');
%data1ADS1292R = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\Ram-KJ32\VISHCEST.csv');
%data1ADS1292R = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\Ram-KJ32\VISHCHESTR.csv');
%data1ADS1292R = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\Ram-KJ32\VISHWANATHCHEST.csv');

%dataAgAgClBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\HBPvishwanath\HBPvishwanath.mat');
%dataAgAgClBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\HBPvishwanath\HBPvishwanath2.mat');
%dataAgAgClBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\HBPvishwanath\HBPVISHWANATHS.mat');
%dataAgAgClBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\HBPvishwanath\VCL5min.mat');

%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\vishwanathtextile.mat');
%data1Biopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\vishwanathtextile6min.mat');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\ADS1292R-ECG-TEXTILE\Deepakagagcl.csv');
%%%%%%%%%%%%%%%%%%%%%%
Ads1292rAgAgCl = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ADS1292R-ECG-TEXTILE\NISCHAL-AgAgcl.csv');
Ads1292rS32 = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ADS1292R-ECG-TEXTILE\NISCHAL-S32.csv');
Ads1292rKJ32 = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ADS1292R-ECG-TEXTILE\NISHCHAL-KJ32.csv');
%%%%%%%%%%%%%%%%%%%%%%%
% Ads1292rS32 = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ADS1292R-ECG-TEXTILE\rama-32silver.csv');
% Ads1292rAgAgCl = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ADS1292R-ECG-TEXTILE\RAMAAGAGCL.csv');
% Ads1292rKJ32 = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors\ADS1292R-ECG-TEXTILE\RAMKJ32.csv');

%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\ram-agagcl-6-min.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\ramesh-agacl-6-min.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\ram-s32-6-min.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\subject-1-agagcl-reference.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\subject-1-kj32.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\subject-1-s32.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\subject-1-s32-ii.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\subject-2-agagacl-dormo.mat');
%dataTextileBiopac = load('F:\Rama-Reddy-R Textile material\Conference-IEEE-Sensors-2018\Biopac-ECG-Data-textile\subject-2-s32.mat');

Fs1 = 125;
Fs2 = 1000;

DataR = Ads1292rAgAgCl(:,2);
DataS = Ads1292rS32(:,2);
DataKJ = Ads1292rKJ32(:,2);

tr =(0:length(DataR)-1)/Fs1;
ts =(0:length(DataS)-1)/Fs1;
tkj =(0:length(DataKJ)-1)/Fs1;

figure(1)
grid on
subplot(4,1,1)
plot(tr, DataR)
subplot(4,1,2)
plot(ts, DataS)
subplot(4,1,3)
plot(tkj, DataKJ)
% DT = dataTextileBiopac.data;
% DA = dataAgAgClBiopac.data(:,1);
% DT =DT(50*Fs2:300*Fs2);
% DA = DA(50*Fs2:300*Fs2);
% tt1 =(0: length(DT)-1)/Fs2;
% tt2 =(0: length(DA)-1)/Fs2;

% figure(1)
% subplot(4,1,1)
% plot(tt1, DT)
% subplot(4,1,2)
% plot(tt2, DA)

% data2 = data1Biopac.data;
% data1 = data3ADS1292R(:,2);
% t1=(0:length(data2)-1)/Fs2;
% %data1r = data1(600*Fs:978*Fs);
% %data1s = data1(1:2000);
% t=(0:length(data1)-1)/Fs;
% figure(1)
% subplot(3,1,1)
% plot(t, data1)
% subplot(3,1,3)
% plot(t1, data2)
% %Fs = 1000;
% 
%fs = 256;                 % sampling rate
F = [0.4 .5 35 35.1];  % band limits
A = [0 1 0];                % band type: 0='stop', 1='pass'
dev = [0.0001 10^(0.1/20)-1 0.0001]; % ripple/attenuation spec
[M,Wn,beta,typ] = kaiserord(F,A,dev,Fs1);  % window parameters
b = fir1(M,Wn,typ,kaiser(M+1,beta),'noscale'); % filter design
sig1 = filter(b,1,DataR);
sig2 = filter(b,1,DataS);
sig3 = filter(b,1,DataKJ);

tr =(0:length(sig1)-1)/Fs1;
ts =(0:length(sig2)-1)/Fs1;
tkj =(0:length(sig3)-1)/Fs1;

figure(2)
ylim([-30 30])
grid on
subplot(3,1,1)
ylim([-30 30])
grid on
plot(tr, sig1)
subplot(3,1,2)
ylim([-30 30])
grid on
plot(ts, sig2)
subplot(3,1,3)
ylim([-30 30])
grid on
plot(tkj, sig3)

sig1 = sig1(30*Fs1:315*Fs1);
sig2 = sig2(30*Fs1:315*Fs1);
sig3 = sig3(30*Fs1:315*Fs1);

tr =(0:length(sig1)-1)/Fs1;
ts =(0:length(sig2)-1)/Fs1;
tkj =(0:length(sig3)-1)/Fs1;

figure(3)
subplot(3,1,1)
grid on
plot(tr, sig1)
ylim([-50 50])
title('ECG Obtained from Ag/AgCl')
xlabel('Time(sec)')
ylabel('Amplitude(mV)')
subplot(3,1,2)
grid on
plot(ts, sig2)
ylim([-50 50])
title('ECG Obtained from Silver-Nylon')
xlabel('Time(sec)')
ylabel('Amplitude(mV)')
subplot(3,1,3)
grid on
plot(tkj, sig3)
ylim([-50 50])
title('ECG Obtained from Knit-Jersey')
xlabel('Time(sec)')
ylabel('Amplitude(mV)')


% sig2 = filter(b,1,data2);
% segmentLength = 30;
% NFFT =2048;
% 
% figure(1)
% data1=sig1;
% data2=sig2;
% ECGsignal1 = data1;
% t = (0:length(ECGsignal1)-1)/Fs;
% plot(t,ECGsignal1);
% figure(2);
% ECGsignal2 = data2;
% t = (0:length(ECGsignal2)-1)/Fs;
% plot(t,ECGsignal2);
% % RestECG = ECGsignal1(300*Fs:930*Fs);
% % WalkECG = ECGsignal1(950*Fs:1550*Fs);
% % StepsRest = ECGsignal1(1550*Fs:1720*Fs);
% % t1 = (0:length(RestECG)-1)/Fs;
% % t2 = (0:length(WalkECG)-1)/Fs;
% % t3 = (0:length(StepsRest)-1)/Fs;
% % subplot (3,1,1);
% % plot(t1,RestECG);
% % subplot (3,1,2);
% % plot(t2,WalkECG);
% % subplot (3,1,3);
% % plot(t3,StepsRest);
% 
% % Sdata1 = data1(1*Fs:680*Fs);
% % Sdata2 = data2(1*Fs:680*Fs);
% % 
% % Sdata3 = data1(680*Fs:1280*Fs);
% % Sdata4 = data2(680*Fs:1280*Fs);
% % 
% % Sdata5 = data1(1280*Fs:1580*Fs);
% % Sdata6 = data2(1280*Fs:1580*Fs);
% 
% Sdata1 = data1(100*Fs:600*Fs);
% Sdata2 = data2(100*Fs:600*Fs);
% 
% Sdata3 = data1(620*Fs:1050*Fs);
% Sdata4 = data2(620*Fs:1050*Fs);
% 
% Sdata5 = data1(1050*Fs:1250*Fs);
% Sdata6 = data2(1050*Fs:1250*Fs);
% 
figure(4)
% % Fs1 =256;
% % freqrange = 'onesided';
% 
% % [pxx1,f1] = pwelch(Sdata3,segmentLength,[],NFFT,Fs,freqrange);
% % [pxx2,f2] = pwelch(Sdata4,segmentLength,[],NFFT,Fs,freqrange);
% 
%     %dat = data; % in uv
    win = 4098;
    wlen= hamming(win); 
    nfft = win;
    SpectrumType = 'psd';
    Noverlap = []; 
    Fs = 125;
%     
k1 = kurtosis(sig1);
k2 = kurtosis(sig2);
k3 = kurtosis(sig3);
% k4 = kurtosis(Sdata4);
% k5 = kurtosis(Sdata5);
% k6 = kurtosis(Sdata6);
[Pxx1,f1] = pwelch(sig1,wlen,Noverlap,nfft,Fs,SpectrumType);
[Pxx2,f2] = pwelch(sig2,wlen,Noverlap,nfft,Fs,SpectrumType);
[Pxx3,f3] = pwelch(sig3,wlen,Noverlap,nfft,Fs,SpectrumType);
% [Pxx4,f4] = pwelch(Sdata4,wlen,Noverlap,nfft,Fs,SpectrumType);
% [Pxx5,f5] = pwelch(Sdata5,wlen,Noverlap,nfft,Fs,SpectrumType);
% [Pxx6,f6] = pwelch(Sdata6,wlen,Noverlap,nfft,Fs,SpectrumType);
% %plot(f1,10*log10(Pxx1),'r','LineWidth',1);
plot(f1,Pxx1,'r','LineWidth',1);
hold on
% %plot(f2,10*log10(Pxx2),'g','LineWidth',1);
plot(f2,Pxx2,'g','LineWidth',1);
hold on
% xlabel('Frequency (Hz)')	 	 
% ylabel('PSD (uV ^{2} dB/ Hz)');
% figure(4)
plot(f3,Pxx3,'b','LineWidth',1);
% hold on
% plot(f4,Pxx4,'g','LineWidth',1);
xlabel('Frequency (Hz)')	 	 
ylabel('PSD (uV ^{2} dB/ Hz)');
% figure(5)
% plot(f5,Pxx5,'r','LineWidth',1);
% hold on
% plot(f6,Pxx6,'g','LineWidth',1);
% xlabel('Frequency (Hz)')	 	 
% ylabel('PSD (uV ^{2}/ Hz)');
% 
% % psdtest1 = pwelch(Sdata1,segmentLength,[],NFFT,Fs,freqrange);
% % psdtest2 = pwelch(Sdata2,segmentLength,[],NFFT,Fs,freqrange);
% % plot(psdtest1)
% % hold on
% % plot(psdtest2)
% %[pxx,f] = pwelch(x,500,300,500,fs);
% % plot(f1,10*log10(pxx1))
% % hold on
% % plot(f2,10*log10(pxx2))
% % xlim([0 50])
% % ylim([0 50])
% % xlabel('Frequency (Hz)')
% % ylabel('PSD (dB/Hz)')
% 
% L = length(data1);
 nfft = 1024;
% freqrange ='onesided';
% %f = [0 50];
% % [Cxy,f] = mscohere(oupt,inpt(:,[1 2]),hamming(100),[],[],fs);
% % plot(f,Cxy)
% % [Cxy, f] = mscohere(data1(350*Fs:650*Fs),data2(350*Fs:650*Fs),hann(nfft),noverlap,nfft2,Fs);
% % plot(f,Cxy)
% nfft/2
% %mscohere(data1(1*Fs:7*Fs),data2(1*Fs:7*Fs),hann(nfft),noverlap,nfft,Fs);
% fr = [5 35];
[C1,f1]=mscohere(sig1,sig2,hann(nfft),nfft/2,nfft,Fs1);
% % figure(4);
[C2,f2]=mscohere(sig1,sig3,hann(nfft),nfft/2,nfft,Fs1);
% % % figure(5);
% [C3,f3]=mscohere(Sdata5,Sdata6,hann(nfft),nfft/2,nfft,Fs);
% % % n = length(data1);
% % nfft = 1024;
% % mscohere(data1,data2(1:n), hanning(nfft), nfft/2, nfft,[0 35]);
% 
% % [C1,f]=mscohere(s1,s1,W,[],W_length,fs); % autocoherence
% % [C2,f]=mscohere(s1,s2,W,[],W_length,fs);
figure(5)
subplot(2,2,1)
% %plot(f1,C1)
plot(f1(1:4*Fs),C1(1:4*Fs),'b')
%plot(f1(1:2*Fs),C1(1:2*Fs),'b')
ylabel('MSC')
xlabel('frequency')
axis tight
ylim([0 1])
subplot(2,2,2)
% %plot(f2,C2)
% hold on;
plot(f2(1:4*Fs),C2(1:4*Fs),'g')
%plot(f2(1:2*Fs),C2(1:2*Fs),'g')
ylabel('MSC')
xlabel('frequency')
axis tight
ylim([0 1])
% %subplot(2,2,3)
% %plot(f3,C3)
% hold on;
% plot(f3(1:6*Fs),C3(1:6*Fs),'r')
% %plot(f3(1:2*Fs),C3(1:2*Fs),'r')
% ylabel('MSC')
% xlabel('frequency')
% axis tight
% ylim([0 1])
RMSdata1 = rms(sig1);
RMSdata2 = rms(sig2);
RMSdata3 = rms(sig3);
ecgin1 = DataR(30*Fs1:315*Fs1);
ecgin2 = DataS(30*Fs1:315*Fs1);
ecgin3 = DataKJ(30*Fs1:315*Fs1);

data1r =ecgin1;
samp_freq = 125;
thresh =0.5;
testmode = 1;
[hrv, R_t, R_amp, R_index, S_t, S_amp]  = rpeakdetect(data1r,samp_freq,thresh,testmode);
% ecgin4 = Sdata4;
% ecgin5 = Sdata5;
% ecgin6 = Sdata6;
% fs= 256;
 cfs = 4;
 iso_t = [];
 [ecgout,baseline,iso_x,newt] = baseline_subtract(ecgin1,iso_t,Fs1,cfs);
 B1 = baseline;
 W1 = newt;
 S1 = std(baseline);
 rms1 = rms(iso_x)
 [ecgout,baseline,iso_x,newt] = baseline_subtract(ecgin2,iso_t,Fs1,cfs);
 B2 = baseline;
 W2 = newt;
 S2 = std(baseline);
 rms2 = rms(iso_x)
 [ecgout,baseline,iso_x,newt] = baseline_subtract(ecgin3,iso_t,Fs1,cfs);
 B3 = baseline;
 W3 = newt;
 S3 = std(baseline);
 rms3 = rms(iso_x)
% [ecgout,baseline,iso_x,newt] = baseline_subtract(ecgin4,iso_t,fs,cfs);
% B4 = baseline;
% W4 = newt;
% S4 = std(baseline);
% [ecgout,baseline,iso_x,newt] = baseline_subtract(ecgin5,iso_t,fs,cfs);
% B5 = baseline;
% W5 = newt;
% S5 = std(baseline);
% [ecgout,baseline,iso_x,newt] = baseline_subtract(ecgin6,iso_t,fs,cfs);
% B6 = baseline;
% W6 = newt;
% S6 = std(baseline);
% rms(iso_x)
for i=1
     figure();
     if(length(B1)<length(W1))
     plot(W1(1:length(B1)),B1,'r');  % splined baseline that was subtracted
     else
     plot(W1,B1(1:length(W1)),'r');  % splined baseline that was subtracted
     end
     hold on
     if(length(B2)<length(W2))
     plot(W2(1:length(B2)),B2,'g');  % splined baseline that was subtracted
     else
     plot(W2,B2(1:length(W2)),'g');  % splined baseline that was subtracted
     end
     hold on
     if(length(B3)<length(W3))
     plot(W3(1:length(B3)),B3,'b');  % splined baseline that was subtracted
     else
     plot(W3,B3(1:length(W3)),'b');  % splined baseline that was subtracted
     end
 end
% for i=1
%     figure();
%     if(length(B3)<length(W3))
%     plot(W3(1:length(B3)),B3,'r');  % splined baseline that was subtracted
%     else
%     plot(W3,B3(1:length(W3)),'r');  % splined baseline that was subtracted
%     end
%     hold on
%     if(length(B4)<length(W4))
%     plot(W4(1:length(B4)),B4,'g');  % splined baseline that was subtracted
%     else
%     plot(W4,B4(1:length(W4)),'g');  % splined baseline that was subtracted
%     end
% end
% for i=1
%     figure();
%     if(length(B5)<length(W5))
%     plot(W5(1:length(B5)),B5,'r');  % splined baseline that was subtracted
%     else
%     plot(W5,B5(1:length(W5)),'r');  % splined baseline that was subtracted
%     end
%     hold on
%     if(length(B6)<length(W6))
%     plot(W6(1:length(B6)),B6,'g');  % splined baseline that was subtracted
%     else
%     plot(W6,B6(1:length(W6)),'g');  % splined baseline that was subtracted
%     end
% end