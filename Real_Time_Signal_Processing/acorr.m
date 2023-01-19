%comp of autocorr of rect seq
n=-5:5;
N=10;
%gen sq seq
x=ones(1,11);
%comp corr seq
%r=conv(x,fliplr(x);
r=xcorr(x);
disp('autocorr seq of r=');
disp(r);
subplot(2,2,1);
stem(n,x);
title('sq seq');
subplot(2,1,2);
k=-N:N;
stem(k,r);
title('autocorr o/p');
xlabel('lag index');
ylabel('ampl');

