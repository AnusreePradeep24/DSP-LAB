clc;  
close all;  
clear all;  
x =input("Enter the sequence:");
h =input("Enter the sequence:"); 
l=length(x);  
m=length(h);  
n=l+m-1;  
x=[x zeros(1,n-l)];  
h=[h zeros(1,n-m)];  
x1=fft(x);  
h1=fft(h);  
y1=x1.*h1;  
y=ifft(y1);  
disp(y); 