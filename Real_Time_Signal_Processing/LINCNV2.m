%lin conv of 2 sided seq
%computation part
x1=[1 2 3 4 5 6 7];
n1=-3:3;
x2=[1 2 3 4 5];
n2=-1:4;
%add last elements of time vector
ybegin=n1(1)+n2(1);
yend=n1(length(x1))+n2(length(x2));
ny=ybegin:yend;
y=conv(x1,x2);
disp('lin conv of x1 & x2');
disp(y);

%graphical disp with time info
subplot(2,1,1);
stem(ny,y);
xlabel('time index of n');
ylabel('amplitude');
title('convolution o/p');

subplot(2,2,3);
stem(n1,x1);
xlabel('time index of n');
ylabel('amplitude');
title('x1 plot');

subplot(2,2,4);
stem(n1,x1);
xlabel('time index of n');
ylabel('amplitude');
title('x2 plot');









