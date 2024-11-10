## THEORY

The Discrete Fourier Transform (DFT) is a mathematical transformation used to analyze the frequency content of discrete signals. For a sequence x[n] of length N, the DFT is defined as:

    `X[k]=∑(n=0 to N-1)x[n] ⋅e^(-j 2π/N nk),k=0,1,2,...,N-1`

X[k] is the DFT of the sequence x[n]. The exponential factor represents e^(-j 2π/N nk) the complex sinusoidal basis functions. The DFT maps the time-domain signal into the frequency domain.

The Inverse Discrete Fourier Transform (IDFT) is used to convert a frequency-domain sequence X[k] back into its time-domain sequence x[n]. The IDFT is defined as: x[n]=1/N ∑(k=0toN-1)X[k] ⋅e^(j 2π/N nk),n=0,1,2,...,N-1

The IDFT takes the frequency components X[k] and reconstructs the original sequence x[n]. The exponential factor e^(j 2π/N nk) is the inverse of the DFT’s complex sinusoidal basis functions . Application Spectrum (Analysis) Filtering Compression Modulation Convolution Demodulation Equalization Restoration Detection Estimation

## OBSERVATION
#### DFT
##### DFT with and without using builtin function

Enter the sequence: 
[ 1 2 3 4]

Enter value of N for N-point DFT :
4
DFT without inbuilt function:
  
  10.0000 + 0.0000i  -2.0000 + 2.0000i  -2.0000 + 0.0000i  -2.0000 - 2.0000i

DFT using FFT:
  
  10.0000 + 0.0000i  -2.0000 + 2.0000i  -2.0000 + 0.0000i  -2.0000 - 2.0000i
![Screenshot (80)](https://github.com/user-attachments/assets/9903539d-2203-47ac-9372-16c4b3653714)


##### DFT using twiddle factor matrix

Enter the sequence: [1 2 3 4] 

Enter value of N for N-point DFT: 4 

Twiddle Factor Matrix: 
  
   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i 
   1.0000 + 0.0000i   0.0000 - 1.0000i  -1.0000 + 0.0000i   0.0000 + 1.0000i 
   1.0000 + 0.0000i  -1.0000 + 0.0000i   1.0000 + 0.0000i  -1.0000 + 0.0000i 
   1.0000 + 0.0000i   0.0000 + 1.0000i  -1.0000 + 0.0000i   0.0000 - 1.0000i 
 
DFT using Twiddle factor matrix multiplication: 
  
  10.0000 + 0.0000i  -2.0000 - 2.0000i  -2.0000 + 0.0000i  -2.0000 + 2.0000i 
 
DFT using FFT: 
  
  10.0000 + 0.0000i  -2.0000 + 2.0000i  -2.0000 + 0.0000i  -2.0000 - 2.0000i

  #### IDFT
  ##### IDFT with and without using twiddle factor matrix

Enter DFT sequence: [1 2 3 4] 

Enter the value of N for N-point IDFT:4 

IDFT without using inbuilt func on: 
  
   2.5000 + 0.0000i  -0.5000 - 0.5000i  -0.5000 + 0.0000i  -0.5000 + 0.5000i 
 
IDFT using ifft: 
   
   2.5000 + 0.0000i  -0.5000 - 0.5000i  -0.5000 + 0.0000i  -0.5000 + 0.5000i 

##### IDFT using twiddle factor matrix

Enter DFT sequence: [1 2 3 4] 

Enter the value of N for N-point IDFT: 4 

Displaying Twiddle Factor Matrix 
   
   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i 
   1.0000 + 0.0000i   0.0000 + 1.0000i  -1.0000 + 0.0000i  -0.0000 - 1.0000i 
   1.0000 + 0.0000i  -1.0000 + 0.0000i   1.0000 - 0.0000i  -1.0000 + 0.0000i 
   1.0000 + 0.0000i  -0.0000 - 1.0000i  -1.0000 + 0.0000i   0.0000 + 1.0000i 
 
IDFT without using Twiddle factor matrix mul plica on: 
  
   2.5000 + 0.0000i  -0.5000 + 0.5000i  -0.5000 + 0.0000i  -0.5000 - 0.5000i 
 
IDFT using ifft: 
   
   2.5000 + 0.0000i  -0.5000 - 0.5000i  -0.5000 + 0.0000i  -0.5000 + 0.5000i 
