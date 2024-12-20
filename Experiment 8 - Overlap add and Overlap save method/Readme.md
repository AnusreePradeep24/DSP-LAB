## THEORY

### **Overlap-Add Method**

The Overlap-Add method, on the other hand, handles circular convolution by adding overlapping sections of the convolved blocks. Here’s how it works:

Block Decomposition: The input signal is split into non-overlapping blocks of size. Each block is then zero-padded to a size of , where is the length of the filter.

FFT and Convolution: Each block is convolved with the filter using FFT. Since the blocks are zero-padded, the convolution produces valid linear results, but the output blocks overlap.

Overlap and Add: After convolution, the results of each block overlap by samples. These overlapping regions are added together to form the final output.

### **Overlap-Save Method**

The Overlap-Save method deals with circular convolution by discarding the parts of the signal that are corrupted by wrap-around effects. Here's how it works:

Block Decomposition: The input signal is divided into overlapping blocks. If the filter has length and we use blocks of length, the overlap is samples, so each block has new samples and samples from the previous block.

FFT and Convolution: Each block is convolved with the filter using FFT. However, because of circular convolution, the result contains artifacts due to the overlap.

Discard and Save: We discard the first samples from each block (the part affected by the wrap-around) and save the remaining samples. This gives us the correct linear convolution.

## OBSERVATION
#### Ovelap Add Method
Enter the sequence:
[1 2 3 4 5 6 7 8 9]

Enter the sequence:
[1 2 3]                     

1.0000    4.0000   10.0000   16.0000   22.0000   28.0000   34.0000   40.0000   46.0000   42.0000   27.0000         
1.0000    4.0000   10.0000   16.0000   22.0000   28.0000   34.0000   40.0000   46.0000   42.0000   27.0000

#### Overlap Save Method

Enter the sequence:
[1 2 3 4 5 6 7 8 9]

Enter the sequence:
[1 2 3]                     

1.0000    4.0000   10.0000   16.0000   22.0000   28.0000   34.0000   40.0000   46.0000   42.0000   27.0000         
1.0000    4.0000   10.0000   16.0000   22.0000   28.0000   34.0000   40.0000   46.0000   42.0000   27.0000
