
%FAN ALGORITHM

clc;
clear all;
close all;

ecg=load('C:\Users\REDDY\Desktop\FINAL LAB EXPERIMENTS\ecg3.dat');
fs=200;

j=1; %index for output fan
i=1; % index for input ecg
k=1;

x0=ecg(i); %original point
fan(j)=x0; %save first permanent point

len=1; %initialize line length
e=25; %set error limit. Vary this parameter to vary compression range



lecg=length(ecg)-2;

 x1=ecg(i+1);
 x2=ecg(i+2);
 x3=ecg(i+3);


while (i<lecg-3)
      
   xu1=x1+e;    xl1=x1-e; 
   
   xu2=2*xu1-x0; xl2=2*xl1-x0; 
   
   xu12=(xu1+xu2)/2; xl12=(xl1+xl2)/2;
   xu3=2*xu12-x0; xl3=2*xl12-x0;
   
   if (x2>xl2 && x2<xu2)
       len=len+1;
                    
       if (x3>xl3 && x3<xu3)
           len=len+1;
           j=j+1; fan(j)=x3;
           k=k+1; fanlen(k)=len;
       else
           j=j+1; fan(j)=x2;
           k=k+1; fanlen(k)=len;
       end
           
   else
       j=j+1; fan(j)=x1;
       k=k+1; fanlen(k)=len;
      
   end
   
   i=i+len;
   x0=ecg(i);
   x1=ecg(i+1);
   x2=ecg(i+2);
   len=1;
end


%Reconstruction


z=1; %Sample number for reconstructed ECG
n=2; %To access the array storing lengths




for m=1:length(fan)-2
    len=fanlen(m+1);
    recfan(z)=fan(m);
    for i=1:len
       recfan(z+i)=recfan(z);
    end
   %n=n+1;
   z=z+len;
end



disp('Size of Original ECG') ; 
disp(length(ecg)); 

disp('Size of ECG after Compression'); 
disp(length(fan)); 

disp('Size of Reconstructed ECG');
disp(length(recfan));

figure;
subplot(3,1,1);
plot(ecg); 
title('Original ECG for FAN');

subplot(3,1,2);
plot(fan);
title('Compressed ECG BY FAN');

%figure;
subplot(3,1,3);
plot(recfan);
title('FAN-Reconstructed ECG');