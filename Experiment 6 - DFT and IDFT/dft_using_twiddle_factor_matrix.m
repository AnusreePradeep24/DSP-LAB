 
%DFT with twiddle factor matrix 
clc; 
clear all; 
close all; 
 
% Input sequence 
x = input("Enter the sequence: "); 
N = input("Enter value of N for N-point DFT: "); 
L = length(x); 
 
if N >= L % Checking if N >= length of input sequence 
    xn = [x, zeros(1, N-L)]; 
     
    % Create twiddle factor matrix 
    k = 0:N-1; 
    n = 0:N-1; 
    W = exp(-1i * 2 * pi * n' * k / N ); 
     
    % Display twiddle factor matrix 
    disp("Twiddle Factor Matrix:"); 
    disp(round(W, 5)); 
     
    % DFT computation using matrix multiplication 
    X = W * xn'; 
     
    % Displaying results 
    disp("DFT using Twiddle factor matrix multiplication:"); 
    disp(round(X', 5)); 
     
    disp("DFT using FFT:"); 
    y = fft(xn, N); 
    disp(round(y, 5)); 
else % if N < length of input sequence 
    disp("DFT cannot be calculated!") 
end 
