function [u,i] = fixmul(a,b,Nu,Qu)

i = 0;
% fixed-point product
u = a*b;

% handle overflow
% check most positive value
while u>(2^(Nu-1)-1)/2^Qu,
  u = (u*2^Qu-2^Nu)/2^Qu;
  i = 1;
end

% check most negative value
while u<-2^(Nu-1)/2^Qu,
  u = (u*2^Qu+2^Nu)/2^Qu;
  i = 1;
end

u = floor(u*2^Qu)/2^Qu;