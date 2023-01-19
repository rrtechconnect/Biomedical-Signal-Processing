clear all;
b=[1/3 1/3 1/3];
a=[1 -0.95 0.9025];
Y=[-2 -3];
X=[1 1];
xic=filter(b,a,Y,X);
n=0:7;
x=cos(pi*n/3);
y=filter(b,a,x,xic);
