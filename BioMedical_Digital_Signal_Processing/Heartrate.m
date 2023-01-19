

fp= fopen('C:\Users\REDDY\Desktop\LAB EXPERIMENTS\ECGS0.DAT','rb');
ecg=fread(fp,'short');
fclose(fp);
figure(1);plot(ecg(1:512),'r');
grid on;
title('acquired ecg');
ls=size(ecg);

sr=512;
%t=1/512:1/512:ls/512;
y=ecg;
%1st differentiation
y1=diff(y);
%2nd differentiation
y2=diff(y1);
% Cumulative of 1st and 2nd differentiation
y=1.3*y1(1:512)+1.1*y2(1:512);
figure(2);
subplot(3,1,1);plot(y1(1:512),'blue');grid on;title('first diffrentiation');
subplot(3,1,2);plot(y2(1:512),'green');grid on;title('second diffrentiation');
%subplot(3,1,3);plot(y(1:512),'black');grid on;title('cumulative diffrentiation');

% Fixing threshold to find qrs complex that is peak point
%This is known as finding hill in the array (1D -signal)
th=abs(max(y));
th=th/2;
c=0;
% peaks are seen as pulses(heart beats)
for i=1:1:512
    if y(i)>th
        qrs(i)=1;
        c=c+1;
        i=i+15;
    else
        qrs(i)=0;
    end
end

figure(3);
plot(qrs);axis([0 512 0 1.2]);title('qrs');xlabel('samples');ylabel('qrs');
title('Q R S dectectected wave form');
figure(4);
t=1/512:1/512:length(qrs)/512;
plot(t,qrs);title('QRS detected = No.of HEART BEAT IN 12 SECONDS ');xlabel('Time in Seconds');ylabel('qrs');axis([0 length(qrs)/512 0 1.2]);

%SQUARING TECHNIQUE
% finding number beats in one minute

index = find( diff( sign( diff([0; qrs(:); 0]) ) ) < 0 );% PEAK DETECTION( MATLAB CENTRAL)
% figure(5);
% plot(index);title('number steps equals to peaks');


li=length(index);% peak detection
disp(li); %li is length of steps equals number of pulses;
Heart_Rate=((li)/2);% for 60 seconds multiply by 5
disp('HEART RATE=');disp(Heart_Rate');