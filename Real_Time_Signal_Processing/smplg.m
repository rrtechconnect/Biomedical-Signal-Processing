tf=0.05;
t=0:0.0005:tf;
fd=input('enter analog frq');
%defined analog frq for comp
xt=sin(2*pi*fd*t);

%simulate condition for undersampling
fs1=1.3*fd;
%define time vector
n1=0:1/fs1:tf;
%gen undersampled signal
xn=sin(2*pi*n1*fd);
%plot analog & sampled frq
subplot(3,1,1);
plot(t,xt,'b',n1,xn,'r*');
title('undersampled plot');

%condition for nyquist plot
fs2=2*fd;
n2=0:1/fs2:tf;
xn=sin(2*pi*n2*fd);
subplot(3,1,2);
plot(t,xt,'b',n2,xn,'r*');
title('nyquist plot');

%condition for oversampling
fs3=4*fd;
n3=0:1/fs3:tf;
xn=sin(2*pi*fd*n3);
subplot(3,1,3);
plot(t,xt,'b',n3,xn,'r*');
title('oversampling plot');
xlabel('amplitude');
legend('analog','discrete');

