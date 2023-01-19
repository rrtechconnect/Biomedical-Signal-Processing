%cross corr
x=input('ref seq');
y=input('2nd seq');
n1=length(x)-1;
n2=length(y)-1;
r=conv(x,fliplr(y));
disp('cross corr o/p ');
disp(r);
k=(-n1):n2;
stem(k,r);
xlabel('index');
ylabel('ampl');
