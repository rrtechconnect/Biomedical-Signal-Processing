clear all;
%circ conv 
x=[1 2 3 4];
n=[1 1 1 1];
N=max(length(x),length(n));
%o/p comp
for n=0:N-1;
    y(n+1)=0;
    for k=0:N-1;
        i=mod((n-k),N);%x index
        if i<0;
            i=i+N;
        end
        y(n+1)=y(n+1)+n(k+1)*x(i+1);
    end
end
dsip('circ conv of x1 & x2 is y=');
disp(y);
n1=0:N-1;
stem(n1,y);
title('circ conv o/p');


