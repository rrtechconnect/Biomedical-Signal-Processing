%generate the filter co-eff for the given order & cut-off say N=33,fc=150
%and fs=1000hz using hamming window
clc;
clear all;
h=fir1(33,150/(1000/2),hamming(34));

%gen output for 50,300 & 200hz, for 30 points
n=1:30;
f1=50;  f2=300;  f3=200;  fs=1000;
x=[];
x1=sin(2*pi*n*f1/fs);
x2=sin(2*pi*n*f2/fs);
x3=sin(2*pi*n*f3/fs);
x=[x1 x2 x3];
%x1=fi(x);
%subplot(2,1,1);
figure(1);
stem(x);
title('input');

%generate o/p
%y=conv(h,x);
y=filter(h,1,x);
disp('y');
disp(y);
yf=fi(y);

%if yf>=0
    %yf=round(yf);
%else yf=floor(yf);
% end
disp('yf');
disp(yf);
figure(2);
subplot(2,1,1);
stem(y);
title('o/p');
subplot(2,1,2);
stem(yf);
title('o/p fixed');