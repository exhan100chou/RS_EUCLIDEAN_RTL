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

Parallel syndrome generator with parallel factor p=16:

![alt text](https://github.com/exhan100chou/RS_EUCLIEAN_RTL/blob/main/photo/RS1.jpg)

Parallel Chien search with parallel factor p=16 :\
Each of the 8 memories can read 16 bits, so it can achieve 8*2 parallelism.

![alt text](https://github.com/exhan100chou/RS_EUCLIEAN_RTL/blob/main/photo/RS2.jpg)

Modified Euclidean algorithm block: \
Use 4 cells to perform calculations at the same time and run 8 cycles to achieve the function of 32 cells

![alt text](https://github.com/exhan100chou/RS_EUCLIEAN_RTL/blob/main/photo/RS3.jpg)

![alt text](https://github.com/exhan100chou/RS_EUCLIEAN_RTL/blob/main/photo/RS4.jpg)

# FPGA Result


![alt text](https://github.com/exhan100chou/RS_EUCLIEAN_RTL/blob/main/photo/RS5.jpg)


![alt text](https://github.com/exhan100chou/RS_EUCLIEAN_RTL/blob/main/photo/RS6.jpg)

![alt text](https://github.com/exhan100chou/RS_EUCLIEAN_RTL/blob/main/photo/RS7.jpg)

clk0 to clk128:buff input memory \
clk419 to clk435:buff output memory\
clk418 to clk640: output (this is 1 clk producing 1 symbol (worst). If more output is allowed at the same time, this will be greatly reduced)\
Clk 419 starts to output without parity (RSout) 00-01-00-01-…. It stops after a total of 223 (but the entire 255 pieces of data are completed after CLK435, so the total number of errors will not be correct until after CLK435)

Throughput:\
Therefore, we only consider the time when the output is fully written to the clk of the memory.\
Throughput (223*8bit/435cycle)*50M=205Mbps\
The highest frequency achievable using simulation is then Throughput (223*8bit/435cycle)*110.63M=453Mbps\


