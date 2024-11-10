## THEORY
The linearity property of the DFT states that if you have two sequences x1[n] and x2[n], and their corresponding DFTs are X1[k] and X2[k], then for any scalar a and b:

     `DFT{a⋅x1[n]+b⋅x2[n]} = a⋅DFT{x1[n]}+b⋅DFT{x2[n]}`

Parseval's theorem states that the total energy of a signal in the time domain is equal to the total energy in the frequency domain. For a sequence x[n] and its DFT 

    `X[k]:∑_(n=0)^(N-1)〖x[n]〗^2 =1/N ∑_(n=0)^(N-1)〖X[k]〗`
    

The convolution property of the DFT states that the circular convolution of two sequences in the time domain is equivalent to the element-wise multiplication of their DFTs in the frequency domain:

      ` DFT{x1[n]⊛x2[n]}=DFT{x1[n]}⋅DFT{x2[n]}`

The multiplication property of DFT states that pointwise multiplication in the time domain corresponds to circular convolution in the frequency domain:
    
    `DFT{x1[n]⋅x2[n]} = ( 1)/NDFT{x1[n]}⊛DFT{x2[n]}`

## OBSERVATION
#### Linearity Property
Enter sequence 1:[1 2 3 4] 
Enter sequence 2:[1 1 1 1] 
LHS: 
  32.0000 + 0.0000i  -4.0000 + 4.0000i  -4.0000 + 0.0000i  -4.0000 - 4.0000i 
 
RHS: 
  32.0000 + 0.0000i  -4.0000 + 4.0000i  -4.0000 + 0.0000i  -4.0000 - 4.0000i 
 
Linearity property verified!

### Multiplication Property
Sequence 1:[1 2 3 4] 
Sequence 2:[1 1 0] 
DFT{x1(n)*x2(n)}: 
   3.0000 + 0.0000i   1.0000 - 2.0000i  -1.0000 + 0.0000i   1.0000 + 2.0000i 
 
X1(k)circonvX2(k)/N: 
   3.0000 + 0.0000i   1.0000 - 2.0000i  -1.0000 + 0.0000i   1.0000 + 2.0000i 
 
Mul plica on property verified! 

### Circular Convolution Property
Enter sequence 1:[1 2 3 2] 
Enter sequence 2:[1 2 1] 
x1(n) cconv x2(n): 
     8     6     8    10 
 
IDFT{X1(k)*X2(k)}: 
     8     6     8    10 
 
Circular convolu on property verified!

### Parsevals Theorem
Enter sequence 1:[1 9 2 8] 
Enter sequence 2:[1 4 5 0] 
Sum{n:0->N-1 ;x1(n)*conj(x2(n))}: 
    47 
 
Sum{k:0->N-1 ;X1(k)*conj(X2(k))}/N: 
    47 
 
Parsevals rela on verified!
