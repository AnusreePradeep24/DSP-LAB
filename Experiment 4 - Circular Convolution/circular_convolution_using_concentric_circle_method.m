clc; 
clear all; 
close all; 
x=input("Enter the sequence:");
h=input("Enter the sequence:");
x=x(:,end:-1:1); 
for i=1:length(x) 
    x=[x(end) x(1:end-1)]; 
    h1=h; 
    y(i)=sum(x.*h); 
end 
disp("Using Concentric Circle Method:") 
disp(y); 