%main part of computation
x1=input('enter first sequence');
x2=input('enter second sequence');
y=conv(x1,x2);
disp('linear conv of x1 and x2 is y=');
disp(y);

%graphical display part
subplot(2,1,1);
stem(y);
xlabel('time index n');
ylabel('ampl');
title('conv o/p');

subplot(2,2,3);
stem(x1);
xlabel('time index n');
ylabel('amplitude');
title('plot of x1');

subplot(2,2,4);
stem(x2);
xlabel('time index n');
ylabel('amplitude');
title('plot of x2');