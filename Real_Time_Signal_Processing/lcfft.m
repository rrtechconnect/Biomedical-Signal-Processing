%lin conv using fft
x1=[1 2 3 4 5];
x2=[2 1 2 1];
N=length(x1)+length(x2)-1;
X1=fft(x1,N);
X2=fft(x2,N);
y=X1.*X2;
yn=ifft(y,N);
disp('lin conv is yn= ');
disp(yn);

%verify
disp('o/p using conv');
yv=conv(x1,x2);
disp(yv);
stem(yn);
title('lin conv o/p y[n]');

