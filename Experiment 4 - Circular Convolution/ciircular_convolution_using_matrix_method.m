clc; 
close all; 
clear all; 
xn=input("Enter the sequence:");
hn=input("Enter the sequence:");
x=[]; 
xn=xn(:,end:-1:1); 
for i=1:length(xn) 
    xn=[xn(end) xn(1:end-1)];
    x=[x;xn]; 
end 
y=x*hn'; 
disp("Using matrix method:"); 
disp(y);