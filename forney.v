module forney(dsigma,sigma,sum,
             clk,reset,
              out
              );



input [7:0]dsigma,sigma,sum;
input clk,reset;

output [7:0]out;
//reg [7:0]sigma1,sum1;

reg x1;
reg [7:0]sum1/*synthesis keep*/;
wire [7:0]dsigma1,out2/*synthesis keep*/;
wire x;
//wire zero=8'b00000000;








memory_inverse mem1(.a(dsigma),.b(dsigma1),.clk(clk),.reset(reset));

or(x,sigma[0],sigma[1],sigma[2],sigma[3],sigma[4],sigma[5],sigma[6],sigma[7]);

multiplier mu(.a(dsigma1),.b(sum1),.c(out2));
//x1  0 use for calculate 1 use for all zero;
mux_8 m1(.a(out2),.b(8'b0),.sel(x1),.out(out)); //0-->a,1-->b






always@(posedge clk or negedge reset)
if(!reset)
begin


sum1 <=#1 8'b0; 
x1 <=#1 1'b1;
end


else
begin


sum1 <=#1 sum;
x1 <=#1 x;

end


endmodule