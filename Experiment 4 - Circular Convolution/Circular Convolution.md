## **AIM:** 

To find circular convolution 

(a) Using FFT and IFFT. 

(b) Using Concentric Circle Method. 

(c) Using Matrix Method. 

## **THEORY:** 

Circular convolution is a mathematical operation that is like linear convolution but is performed in a periodic or circular manner. This is particularly useful in discrete-time signal processing where signals are often represented as periodic sequences. 

Mathematical Definition: 
Given two periodic sequences x[n] and h[n], their circular convolution is defined as: 

            y[n] = (x[n] ⊛ h[n]) = ∑_{k=0} ^{N-1} x[k]h[(n-k) mod N]  

Applications: 

•  Discrete-Time Filtering: Circular convolution is used for filtering discrete-time signals. 

•  Digital Signal Processing: It's a fundamental operation in many digital signal processing        algorithms. 

•  Cyclic Convolution: In certain applications, such as cyclic prefix OFDM, circular convolution is used to simplify the implementation of linear convolution.

## OBSERVATION

(a) Using FFT and IFFT:
            
            12     8     8    12

(b) Using Concentric Circle Method:            
           
            12     8     8    12

(c) Using matrix method:
        
            12     8     8    12

## RESULT

Performed Circular Convolution using (a) FFT and IFFT; (b) Concentric Circle method; (c) Matrix method and verified result.
 


