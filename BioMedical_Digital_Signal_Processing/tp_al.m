f=fopen('C:\Users\REDDY\Desktop\FINAL LAB EXPERIMENTS\ECGS0.DAT', 'r')
ecg=fread(f,[1 300], 'short');
x0=ecg(1);
tp1=x0;
x1=ecg(2);
x2=ecg(3);
j=2;
k=2;
for i=2:length(ecg)-10
    s1=sign(x1-x0);
    s2=sign(x2-x1);
    tpp=(~s1:(s1+s2))
    if tpp==0
        tp(j)=x1;
        x0=x1;
        x1=ecg(k+1);
        x2=ecg(k+2);
        k=k+1;
    else
        tp(j)=x2;
        x0=x2;
        x1=ecg(k+2);
        x2=ecg(k+3);
        k=k+2;
    end
    if k>length(ecg)-10
        break;
    else
        j=j+1;
    end
end
%disaly
figure(1);
subplot(2,1,1);
plot(ecg);
xlabel('time');
ylabel('amplitude');
title('Turning point-Original ecg signal');
grid on;
subplot(2,1,2);
plot(tp);
xlabel('time');
ylabel('amplitude');
title('Turning point-compressed signal');
grid on;


