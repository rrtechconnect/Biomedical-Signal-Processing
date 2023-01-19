load 'C:\Users\REDDY\Desktop\FINAL LAB EXPERIMENTS\ECGS1.DAT'
n=1:300;
w=60*sin(2*pi*n*(50/180));
s=w(1:300)+ECGS1(1:300);% noisy ecg signal
ecg=ECGS1(1:300);

d  = ecg   % Signal to be canceled (desired signal)
mu = 0.008;              % Adjoint LMS step size
ha = adaptfilt.adjlms(32,mu,1,0);
[y,e] = filter(ha,s,d);
figure(1);
plot(1:300,s,'b',1:300,e,'r');
title('Active adaptive Noise Control');
legend('Original','Attenuated');
xlabel('Time Index'); ylabel('Signal Value');  grid on;