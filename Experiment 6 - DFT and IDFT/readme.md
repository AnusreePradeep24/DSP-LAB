## THEORY

The Discrete Fourier Transform (DFT) is a mathematical transformation used to analyze the frequency content of discrete signals. For a sequence x[n] of length N, the DFT is defined as:

    `X[k]=∑(n=0 to N-1)x[n] ⋅e^(-j 2π/N nk),k=0,1,2,...,N-1`

X[k] is the DFT of the sequence x[n]. The exponential factor represents e^(-j 2π/N nk) the complex sinusoidal basis functions. The DFT maps the time-domain signal into the frequency domain.

The Inverse Discrete Fourier Transform (IDFT) is used to convert a frequency-domain sequence X[k] back into its time-domain sequence x[n]. The IDFT is defined as: x[n]=1/N ∑(k=0toN-1)X[k] ⋅e^(j 2π/N nk),n=0,1,2,...,N-1

The IDFT takes the frequency components X[k] and reconstructs the original sequence x[n]. The exponential factor e^(j 2π/N nk) is the inverse of the DFT’s complex sinusoidal basis functions . Application Spectrum (Analysis) Filtering Compression Modulation Convolution Demodulation Equalization Restoration Detection Estimation

## OBSERVATION
#### DFT

enter sequence:[1 1 1 0] 

enter the N point:8 

X 
  
  Columns 1 through 7 
   3.0000 + 0.0000i   1.7071 - 1.7071i   0.0000 - 1.0000i   0.2929 + 0.2929i   1.0000 + 0.0000i   0.2929 - 0.2929i  -0.0000 + 1.0000i 
  
  Column 8 
   1.7071 + 1.7071i 

round(X) 
  
  Columns 1 through 7 
   3.0000 + 0.0000i   2.0000 - 2.0000i   0.0000 - 1.0000i   0.0000 + 0.0000i   1.0000 + 0.0000i  0.0000 + 0.0000i   0.0000 + 1.0000i 
 
  Column 8 
   2.0000 + 2.0000i 

fft 
  
  Columns 1 through 7 
   3.0000 + 0.0000i   1.7071 - 1.7071i   0.0000 - 1.0000i   0.2929 + 0.2929i   1.0000 + 0.0000i   0.2929 - 0.2929i   0.0000 + 1.0000i 

  Column 8 
   1.7071 + 1.7071i

   ![image](https://github.com/user-attachments/assets/3a9a5fa3-cffa-46a5-8208-3935aef1ad73)


