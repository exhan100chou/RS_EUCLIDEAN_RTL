# RS_EUCLIEAN_RTL
Reed Solomon (RS) decoder using Modified Euclidean algorithm parallel architecture\
RS(255.223) code\
# Function description:
Input: RSin 16bits (2 symbols) per clk, total input 255symbol\
rst 0:RESET 1:work\
start: 0:stop 1:work\
clk: All work connections use positive edge triggering\
Output: 
1. 8bits(1 symbol) per clk, total output 223symbol\
2. Number of errors in 255symbol\
Data access: using 8 512memory (32*16), a total of 8*32*2=512symbol Among them, 256 are used as input and the other 256 are used as output.\
Data input uses r[i] in the out file as input e_l[i] is the estimated error, code[i] is the original and corrected code\

top-level design: test_bench.v 

![alt text](https://github.com/exhan100chou/RS_EUCLIEAN_RTL/blob/main/photo/Fig1.jpg)

