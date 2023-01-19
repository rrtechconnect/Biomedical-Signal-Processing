%spectrum
x=[1 3 4 6];
N=4;
xk=fft(x,N);
n=0:N-1;
figure(1);
stem(n,abs(xk));
xlabel('k');
ylabel('|xk|');
title('mag');

figure(2);
stem(n,angle(xk));
xlabel('k');
ylabel('angle(xk)');
title('phase');
figure(3);
n1=0:1:length(x)-1;
stem(n1,x);
xlabel('n');
ylabel('x[n]');
title('original');



