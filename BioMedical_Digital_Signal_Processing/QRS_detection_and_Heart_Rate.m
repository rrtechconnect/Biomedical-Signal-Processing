clear;
clc;
f=fopen('C:\Users\REDDY\Desktop\internals\QRS-Detection-rajeev\ecg signal\ecg3.dat','r');
ecg=fread(f,[1 100],'short');
fclose(f);

y0=diff(ecg);
figure(1);
subplot(4,1,1);
plot(ecg,'k');
title('QRS Detection-Original signal');
subplot(4,1,2);
plot(y0,'k');
title('QRS Detection-First derivative of ecg signal');
grid on;
y1=diff(y0);
subplot(4,1,3);
plot(y1,'k');
title('QRS Detection-second derivative of ecg signal');
grid on;
y2=1.3*y0(1:98)+1.1*y1(1:98);
th=0.75*max(y2);
for i=1:98
    if(y2(i)>(th))
        y(i)=1;
    else y(i)=0;
    end;
end;
subplot(4,1,4); plot(y,'k');
title('Detected QRS'); grid on;
count=0;
for j=1:97
    if(y(j)==0 & y(j+1)==1)
        sum=count;
    end;
    count=count+1;
end;
HR=(count*60)/sum;
disp('Heart rate=');
disp(HR);