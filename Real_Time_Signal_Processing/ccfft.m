%circ conv using fft
x1=[1 2 3 4];
x2=[1 2 3 4];
N=max(length(x1),length(x2));
X1=fft(x1,N);
X2=fft(x2,N);
y=X1.*X2;
yn=ifft(y,N);
disp('circ conv o/p');
disp(yn);
stem(yn);
title('circ conv o/p');


