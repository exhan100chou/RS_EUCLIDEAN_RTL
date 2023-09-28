module multi0(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0];//0          
assign t[1]=b[1];              
assign t[2]=b[2];              
assign t[3]=b[3];              
assign t[4]=b[4];              
assign t[5]=b[5];              
assign t[6]=b[6];              
assign t[7]=b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi1(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[7];//1           
assign t[1]=b[0];              
assign t[2]=b[1]^b[7];              
assign t[3]=b[2]^b[7];              
assign t[4]=b[3]^b[7];              
assign t[5]=b[4];              
assign t[6]=b[5];              
assign t[7]=b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi2(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[6];//2           
assign t[1]=b[7];              
assign t[2]=b[0]^b[6];              
assign t[3]=b[1]^b[6]^b[7];              
assign t[4]=b[2]^b[6]^b[7];              
assign t[5]=b[3]^b[7];              
assign t[6]=b[4];              
assign t[7]=b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi3(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[5];//3           
assign t[1]=b[6];              
assign t[2]=b[5]^b[7];              
assign t[3]=b[0]^b[5]^b[6];              
assign t[4]=b[1]^b[5]^b[6]^b[7];              
assign t[5]=b[2]^b[6]^b[7];              
assign t[6]=b[3]^b[7];              
assign t[7]=b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi4(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[4];//4           
assign t[1]=b[5];              
assign t[2]=b[4]^b[6];              
assign t[3]=b[4]^b[5]^b[7];              
assign t[4]=b[0]^b[4]^b[5]^b[6];              
assign t[5]=b[1]^b[5]^b[6]^b[7];              
assign t[6]=b[2]^b[6]^b[7];              
assign t[7]=b[3]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi5(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[7];//5           
assign t[1]=b[4];              
assign t[2]=b[3]^b[5]^b[7];              
assign t[3]=b[3]^b[4]^b[6]^b[7];              
assign t[4]=b[3]^b[4]^b[5];              
assign t[5]=b[0]^b[4]^b[5]^b[6];              
assign t[6]=b[1]^b[5]^b[6]^b[7];              
assign t[7]=b[2]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi6(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[6]^b[7];//6           
assign t[1]=b[3]^b[7];              
assign t[2]=b[2]^b[4]^b[6]^b[7];              
assign t[3]=b[2]^b[3]^b[5]^b[6];              
assign t[4]=b[2]^b[3]^b[4];              
assign t[5]=b[3]^b[4]^b[5];              
assign t[6]=b[0]^b[4]^b[5]^b[6];              
assign t[7]=b[1]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi7(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[5]^b[6]^b[7];//7           
assign t[1]=b[2]^b[6]^b[7];              
assign t[2]=b[1]^b[3]^b[5]^b[6];              
assign t[3]=b[1]^b[2]^b[4]^b[5];              
assign t[4]=b[1]^b[2]^b[3]^b[7];              
assign t[5]=b[2]^b[3]^b[4];              
assign t[6]=b[3]^b[4]^b[5];              
assign t[7]=b[0]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi8(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[4]^b[5]^b[6];//8           
assign t[1]=b[1]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[2]^b[4]^b[5]^b[7];              
assign t[3]=b[0]^b[1]^b[3]^b[4];              
assign t[4]=b[0]^b[1]^b[2]^b[6];              
assign t[5]=b[1]^b[2]^b[3]^b[7];              
assign t[6]=b[2]^b[3]^b[4];              
assign t[7]=b[3]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi9(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[4]^b[5];//9           
assign t[1]=b[0]^b[4]^b[5]^b[6];              
assign t[2]=b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[3]=b[0]^b[2]^b[3]^b[7];              
assign t[4]=b[0]^b[1]^b[5];              
assign t[5]=b[0]^b[1]^b[2]^b[6];              
assign t[6]=b[1]^b[2]^b[3]^b[7];              
assign t[7]=b[2]^b[3]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi10(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[4];//10          
assign t[1]=b[3]^b[4]^b[5];              
assign t[2]=b[0]^b[2]^b[3]^b[5]^b[6];              
assign t[3]=b[1]^b[2]^b[6]^b[7];              
assign t[4]=b[0]^b[4]^b[7];              
assign t[5]=b[0]^b[1]^b[5];              
assign t[6]=b[0]^b[1]^b[2]^b[6];              
assign t[7]=b[1]^b[2]^b[3]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi11(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[7];//11          
assign t[1]=b[2]^b[3]^b[4];              
assign t[2]=b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[3]=b[0]^b[1]^b[5]^b[6]^b[7];              
assign t[4]=b[3]^b[6];              
assign t[5]=b[0]^b[4]^b[7];              
assign t[6]=b[0]^b[1]^b[5];              
assign t[7]=b[0]^b[1]^b[2]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi12(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[6];//12          
assign t[1]=b[1]^b[2]^b[3]^b[7];              
assign t[2]=b[0]^b[1]^b[3]^b[4]^b[6];              
assign t[3]=b[0]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[2]^b[5]^b[7];              
assign t[5]=b[3]^b[6];              
assign t[6]=b[0]^b[4]^b[7];              
assign t[7]=b[0]^b[1]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi13(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[5];//13          
assign t[1]=b[0]^b[1]^b[2]^b[6];              
assign t[2]=b[0]^b[2]^b[3]^b[5]^b[7];              
assign t[3]=b[3]^b[4]^b[5]^b[6];              
assign t[4]=b[1]^b[4]^b[6]^b[7];              
assign t[5]=b[2]^b[5]^b[7];              
assign t[6]=b[3]^b[6];              
assign t[7]=b[0]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi14(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[4]^b[7];//14          
assign t[1]=b[0]^b[1]^b[5];              
assign t[2]=b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[3]=b[2]^b[3]^b[4]^b[5];              
assign t[4]=b[0]^b[3]^b[5]^b[6]^b[7];              
assign t[5]=b[1]^b[4]^b[6]^b[7];              
assign t[6]=b[2]^b[5]^b[7];              
assign t[7]=b[3]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi15(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[6];//15          
assign t[1]=b[0]^b[4]^b[7];              
assign t[2]=b[0]^b[1]^b[3]^b[5]^b[6];              
assign t[3]=b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[4]=b[2]^b[4]^b[5]^b[6];              
assign t[5]=b[0]^b[3]^b[5]^b[6]^b[7];              
assign t[6]=b[1]^b[4]^b[6]^b[7];              
assign t[7]=b[2]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi16(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[5]^b[7];//16          
assign t[1]=b[3]^b[6];              
assign t[2]=b[0]^b[2]^b[4]^b[5];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[4]=b[1]^b[3]^b[4]^b[5];              
assign t[5]=b[2]^b[4]^b[5]^b[6];              
assign t[6]=b[0]^b[3]^b[5]^b[6]^b[7];              
assign t[7]=b[1]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi17(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[4]^b[6]^b[7];//17          
assign t[1]=b[2]^b[5]^b[7];              
assign t[2]=b[1]^b[3]^b[4]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[4];              
assign t[5]=b[1]^b[3]^b[4]^b[5];              
assign t[6]=b[2]^b[4]^b[5]^b[6];              
assign t[7]=b[0]^b[3]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi18(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[5]^b[6]^b[7];//18          
assign t[1]=b[1]^b[4]^b[6]^b[7];              
assign t[2]=b[0]^b[2]^b[3]^b[6];              
assign t[3]=b[0]^b[1]^b[4]^b[5]^b[6];              
assign t[4]=b[1]^b[2]^b[3];              
assign t[5]=b[0]^b[2]^b[3]^b[4];              
assign t[6]=b[1]^b[3]^b[4]^b[5];              
assign t[7]=b[2]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi19(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[4]^b[5]^b[6];//19          
assign t[1]=b[0]^b[3]^b[5]^b[6]^b[7];              
assign t[2]=b[1]^b[2]^b[5]^b[7];              
assign t[3]=b[0]^b[3]^b[4]^b[5];              
assign t[4]=b[0]^b[1]^b[2];              
assign t[5]=b[1]^b[2]^b[3];              
assign t[6]=b[0]^b[2]^b[3]^b[4];              
assign t[7]=b[1]^b[3]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi20(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[4]^b[5];//20          
assign t[1]=b[2]^b[4]^b[5]^b[6];              
assign t[2]=b[0]^b[1]^b[4]^b[6]^b[7];              
assign t[3]=b[2]^b[3]^b[4]^b[7];              
assign t[4]=b[0]^b[1];              
assign t[5]=b[0]^b[1]^b[2];              
assign t[6]=b[1]^b[2]^b[3];              
assign t[7]=b[0]^b[2]^b[3]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi21(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[4];//21          
assign t[1]=b[1]^b[3]^b[4]^b[5];              
assign t[2]=b[0]^b[3]^b[5]^b[6];              
assign t[3]=b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[4]=b[0]^b[7];              
assign t[5]=b[0]^b[1];              
assign t[6]=b[0]^b[1]^b[2];              
assign t[7]=b[1]^b[2]^b[3];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi22(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3];//22          
assign t[1]=b[0]^b[2]^b[3]^b[4];              
assign t[2]=b[2]^b[4]^b[5];              
assign t[3]=b[0]^b[1]^b[2]^b[5]^b[6];              
assign t[4]=b[6]^b[7];              
assign t[5]=b[0]^b[7];              
assign t[6]=b[0]^b[1];              
assign t[7]=b[0]^b[1]^b[2];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi23(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2];//23          
assign t[1]=b[1]^b[2]^b[3];              
assign t[2]=b[1]^b[3]^b[4];              
assign t[3]=b[0]^b[1]^b[4]^b[5];              
assign t[4]=b[5]^b[6];              
assign t[5]=b[6]^b[7];              
assign t[6]=b[0]^b[7];              
assign t[7]=b[0]^b[1];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi24(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1];//24          
assign t[1]=b[0]^b[1]^b[2];              
assign t[2]=b[0]^b[2]^b[3];              
assign t[3]=b[0]^b[3]^b[4];              
assign t[4]=b[4]^b[5];              
assign t[5]=b[5]^b[6];              
assign t[6]=b[6]^b[7];              
assign t[7]=b[0]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi25(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[7];//25          
assign t[1]=b[0]^b[1];              
assign t[2]=b[1]^b[2]^b[7];              
assign t[3]=b[2]^b[3]^b[7];              
assign t[4]=b[3]^b[4]^b[7];              
assign t[5]=b[4]^b[5];              
assign t[6]=b[5]^b[6];              
assign t[7]=b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi26(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[6]^b[7];//26          
assign t[1]=b[0]^b[7];              
assign t[2]=b[0]^b[1]^b[6]^b[7];              
assign t[3]=b[1]^b[2]^b[6];              
assign t[4]=b[2]^b[3]^b[6];              
assign t[5]=b[3]^b[4]^b[7];              
assign t[6]=b[4]^b[5];              
assign t[7]=b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi27(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[5]^b[6];//27          
assign t[1]=b[6]^b[7];              
assign t[2]=b[0]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[5]^b[7];              
assign t[4]=b[1]^b[2]^b[5];              
assign t[5]=b[2]^b[3]^b[6];              
assign t[6]=b[3]^b[4]^b[7];              
assign t[7]=b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi28(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[4]^b[5];//28          
assign t[1]=b[5]^b[6];              
assign t[2]=b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[4]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[4]^b[7];              
assign t[5]=b[1]^b[2]^b[5];              
assign t[6]=b[2]^b[3]^b[6];              
assign t[7]=b[3]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi29(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[4]^b[7];//29          
assign t[1]=b[4]^b[5];              
assign t[2]=b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[3]^b[5]^b[6];              
assign t[4]=b[0]^b[3]^b[6];              
assign t[5]=b[0]^b[1]^b[4]^b[7];              
assign t[6]=b[1]^b[2]^b[5];              
assign t[7]=b[2]^b[3]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi30(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[6];//30          
assign t[1]=b[3]^b[4]^b[7];              
assign t[2]=b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[3]=b[2]^b[4]^b[5]^b[7];              
assign t[4]=b[2]^b[5];              
assign t[5]=b[0]^b[3]^b[6];              
assign t[6]=b[0]^b[1]^b[4]^b[7];              
assign t[7]=b[1]^b[2]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi31(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[5];//31          
assign t[1]=b[2]^b[3]^b[6];              
assign t[2]=b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[3]=b[1]^b[3]^b[4]^b[6];              
assign t[4]=b[1]^b[4]^b[7];              
assign t[5]=b[2]^b[5];              
assign t[6]=b[0]^b[3]^b[6];              
assign t[7]=b[0]^b[1]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi32(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[4]^b[7];//32          
assign t[1]=b[1]^b[2]^b[5];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[3]=b[0]^b[2]^b[3]^b[5];              
assign t[4]=b[0]^b[3]^b[6]^b[7];              
assign t[5]=b[1]^b[4]^b[7];              
assign t[6]=b[2]^b[5];              
assign t[7]=b[0]^b[3]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi33(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[6];//33          
assign t[1]=b[0]^b[1]^b[4]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[3]=b[1]^b[2]^b[4]^b[7];              
assign t[4]=b[2]^b[5]^b[6];              
assign t[5]=b[0]^b[3]^b[6]^b[7];              
assign t[6]=b[1]^b[4]^b[7];              
assign t[7]=b[2]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi34(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[5];//34          
assign t[1]=b[0]^b[3]^b[6];              
assign t[2]=b[0]^b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[3]=b[0]^b[1]^b[3]^b[6];              
assign t[4]=b[1]^b[4]^b[5]^b[7];              
assign t[5]=b[2]^b[5]^b[6];              
assign t[6]=b[0]^b[3]^b[6]^b[7];              
assign t[7]=b[1]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi35(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[4]^b[7];//35          
assign t[1]=b[2]^b[5];              
assign t[2]=b[0]^b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[3]=b[0]^b[2]^b[5];              
assign t[4]=b[0]^b[3]^b[4]^b[6]^b[7];              
assign t[5]=b[1]^b[4]^b[5]^b[7];              
assign t[6]=b[2]^b[5]^b[6];              
assign t[7]=b[0]^b[3]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi36(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[6]^b[7];//36          
assign t[1]=b[1]^b[4]^b[7];              
assign t[2]=b[0]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[3]=b[1]^b[4];              
assign t[4]=b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[3]^b[4]^b[6]^b[7];              
assign t[6]=b[1]^b[4]^b[5]^b[7];              
assign t[7]=b[2]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi37(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[5]^b[6];//37          
assign t[1]=b[0]^b[3]^b[6]^b[7];              
assign t[2]=b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[3]^b[7];              
assign t[4]=b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[5]=b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[3]^b[4]^b[6]^b[7];              
assign t[7]=b[1]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi38(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[4]^b[5]^b[7];//38          
assign t[1]=b[2]^b[5]^b[6];              
assign t[2]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[3]=b[2]^b[6];              
assign t[4]=b[0]^b[1]^b[3]^b[4]^b[5];              
assign t[5]=b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[6]=b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[3]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi39(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[4]^b[6]^b[7];//39          
assign t[1]=b[1]^b[4]^b[5]^b[7];              
assign t[2]=b[0]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[3]=b[1]^b[5]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[4]^b[7];              
assign t[5]=b[0]^b[1]^b[3]^b[4]^b[5];              
assign t[6]=b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[7]=b[2]^b[3]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi40(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[5]^b[6]^b[7];//40          
assign t[1]=b[0]^b[3]^b[4]^b[6]^b[7];              
assign t[2]=b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[3]=b[0]^b[4]^b[6];              
assign t[4]=b[1]^b[2]^b[3]^b[6];              
assign t[5]=b[0]^b[2]^b[3]^b[4]^b[7];              
assign t[6]=b[0]^b[1]^b[3]^b[4]^b[5];              
assign t[7]=b[1]^b[2]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi41(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[4]^b[5]^b[6];//41          
assign t[1]=b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[3]=b[3]^b[5];              
assign t[4]=b[0]^b[1]^b[2]^b[5];              
assign t[5]=b[1]^b[2]^b[3]^b[6];              
assign t[6]=b[0]^b[2]^b[3]^b[4]^b[7];              
assign t[7]=b[0]^b[1]^b[3]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi42(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[4]^b[5];//42          
assign t[1]=b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[2]=b[0]^b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[3]=b[2]^b[4]^b[7];              
assign t[4]=b[0]^b[1]^b[4];              
assign t[5]=b[0]^b[1]^b[2]^b[5];              
assign t[6]=b[1]^b[2]^b[3]^b[6];              
assign t[7]=b[0]^b[2]^b[3]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi43(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[4]^b[7];//43          
assign t[1]=b[0]^b[1]^b[3]^b[4]^b[5];              
assign t[2]=b[0]^b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[3]=b[1]^b[3]^b[6];              
assign t[4]=b[0]^b[3];              
assign t[5]=b[0]^b[1]^b[4];              
assign t[6]=b[0]^b[1]^b[2]^b[5];              
assign t[7]=b[1]^b[2]^b[3]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi44(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[6];//44          
assign t[1]=b[0]^b[2]^b[3]^b[4]^b[7];              
assign t[2]=b[0]^b[2]^b[4]^b[5]^b[6];              
assign t[3]=b[0]^b[2]^b[5]^b[7];              
assign t[4]=b[2];              
assign t[5]=b[0]^b[3];              
assign t[6]=b[0]^b[1]^b[4];              
assign t[7]=b[0]^b[1]^b[2]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi45(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[5];//45          
assign t[1]=b[1]^b[2]^b[3]^b[6];              
assign t[2]=b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[3]=b[1]^b[4]^b[6];              
assign t[4]=b[1]^b[7];              
assign t[5]=b[2];              
assign t[6]=b[0]^b[3];              
assign t[7]=b[0]^b[1]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi46(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[4];//46          
assign t[1]=b[0]^b[1]^b[2]^b[5];              
assign t[2]=b[0]^b[2]^b[3]^b[4]^b[6];              
assign t[3]=b[0]^b[3]^b[5]^b[7];              
assign t[4]=b[0]^b[6];              
assign t[5]=b[1]^b[7];              
assign t[6]=b[2];              
assign t[7]=b[0]^b[3];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi47(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3];//47          
assign t[1]=b[0]^b[1]^b[4];              
assign t[2]=b[1]^b[2]^b[3]^b[5];              
assign t[3]=b[2]^b[4]^b[6];              
assign t[4]=b[5]^b[7];              
assign t[5]=b[0]^b[6];              
assign t[6]=b[1]^b[7];              
assign t[7]=b[2];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi48(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2];//48          
assign t[1]=b[0]^b[3];              
assign t[2]=b[0]^b[1]^b[2]^b[4];              
assign t[3]=b[1]^b[3]^b[5];              
assign t[4]=b[4]^b[6];              
assign t[5]=b[5]^b[7];              
assign t[6]=b[0]^b[6];              
assign t[7]=b[1]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi49(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[7];//49          
assign t[1]=b[2];              
assign t[2]=b[0]^b[1]^b[3]^b[7];              
assign t[3]=b[0]^b[2]^b[4]^b[7];              
assign t[4]=b[3]^b[5]^b[7];              
assign t[5]=b[4]^b[6];              
assign t[6]=b[5]^b[7];              
assign t[7]=b[0]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi50(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[6];//50          
assign t[1]=b[1]^b[7];              
assign t[2]=b[0]^b[2]^b[6];              
assign t[3]=b[1]^b[3]^b[6]^b[7];              
assign t[4]=b[2]^b[4]^b[6]^b[7];              
assign t[5]=b[3]^b[5]^b[7];              
assign t[6]=b[4]^b[6];              
assign t[7]=b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi51(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[5]^b[7];//51          
assign t[1]=b[0]^b[6];              
assign t[2]=b[1]^b[5];              
assign t[3]=b[0]^b[2]^b[5]^b[6]^b[7];              
assign t[4]=b[1]^b[3]^b[5]^b[6];              
assign t[5]=b[2]^b[4]^b[6]^b[7];              
assign t[6]=b[3]^b[5]^b[7];              
assign t[7]=b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi52(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[4]^b[6];//52          
assign t[1]=b[5]^b[7];              
assign t[2]=b[0]^b[4];              
assign t[3]=b[1]^b[4]^b[5]^b[6];              
assign t[4]=b[0]^b[2]^b[4]^b[5]^b[7];              
assign t[5]=b[1]^b[3]^b[5]^b[6];              
assign t[6]=b[2]^b[4]^b[6]^b[7];              
assign t[7]=b[3]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi53(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[5]^b[7];//53          
assign t[1]=b[4]^b[6];              
assign t[2]=b[3];              
assign t[3]=b[0]^b[3]^b[4]^b[5]^b[7];              
assign t[4]=b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[5]=b[0]^b[2]^b[4]^b[5]^b[7];              
assign t[6]=b[1]^b[3]^b[5]^b[6];              
assign t[7]=b[2]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi54(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[4]^b[6]^b[7];//54          
assign t[1]=b[3]^b[5]^b[7];              
assign t[2]=b[2]^b[7];              
assign t[3]=b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[5]^b[6];              
assign t[5]=b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[6]=b[0]^b[2]^b[4]^b[5]^b[7];              
assign t[7]=b[1]^b[3]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi55(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[5]^b[6];//55          
assign t[1]=b[2]^b[4]^b[6]^b[7];              
assign t[2]=b[1]^b[6]^b[7];              
assign t[3]=b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[4]=b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[5]=b[0]^b[2]^b[3]^b[5]^b[6];              
assign t[6]=b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[7]=b[0]^b[2]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi56(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[4]^b[5]^b[7];//56          
assign t[1]=b[1]^b[3]^b[5]^b[6];              
assign t[2]=b[0]^b[5]^b[6];              
assign t[3]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[4]=b[0]^b[1]^b[3]^b[4]^b[6];              
assign t[5]=b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[6]=b[0]^b[2]^b[3]^b[5]^b[6];              
assign t[7]=b[1]^b[3]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi57(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[4]^b[6]^b[7];//57          
assign t[1]=b[0]^b[2]^b[4]^b[5]^b[7];              
assign t[2]=b[4]^b[5]^b[7];              
assign t[3]=b[0]^b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[5]^b[7];              
assign t[5]=b[0]^b[1]^b[3]^b[4]^b[6];              
assign t[6]=b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[7]=b[0]^b[2]^b[3]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi58(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[5]^b[6];//58          
assign t[1]=b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[2]=b[3]^b[4]^b[6]^b[7];              
assign t[3]=b[0]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[4]=b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[5]=b[0]^b[2]^b[3]^b[5]^b[7];              
assign t[6]=b[0]^b[1]^b[3]^b[4]^b[6];              
assign t[7]=b[1]^b[2]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi59(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[4]^b[5]^b[7];//59          
assign t[1]=b[0]^b[2]^b[3]^b[5]^b[6];              
assign t[2]=b[2]^b[3]^b[5]^b[6];              
assign t[3]=b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[4]=b[0]^b[1]^b[3]^b[5]^b[6];              
assign t[5]=b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[6]=b[0]^b[2]^b[3]^b[5]^b[7];              
assign t[7]=b[0]^b[1]^b[3]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi60(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[4]^b[6];//60          
assign t[1]=b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[2]=b[1]^b[2]^b[4]^b[5];              
assign t[3]=b[0]^b[1]^b[2]^b[4]^b[5];              
assign t[4]=b[0]^b[2]^b[4]^b[5];              
assign t[5]=b[0]^b[1]^b[3]^b[5]^b[6];              
assign t[6]=b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[7]=b[0]^b[2]^b[3]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi61(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[5]^b[7];//61          
assign t[1]=b[0]^b[1]^b[3]^b[4]^b[6];              
assign t[2]=b[0]^b[1]^b[3]^b[4];              
assign t[3]=b[0]^b[1]^b[3]^b[4]^b[7];              
assign t[4]=b[1]^b[3]^b[4]^b[7];              
assign t[5]=b[0]^b[2]^b[4]^b[5];              
assign t[6]=b[0]^b[1]^b[3]^b[5]^b[6];              
assign t[7]=b[1]^b[2]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi62(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[4]^b[6]^b[7];//62          
assign t[1]=b[0]^b[2]^b[3]^b[5]^b[7];              
assign t[2]=b[0]^b[2]^b[3]^b[7];              
assign t[3]=b[0]^b[2]^b[3]^b[6]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[6];              
assign t[5]=b[1]^b[3]^b[4]^b[7];              
assign t[6]=b[0]^b[2]^b[4]^b[5];              
assign t[7]=b[0]^b[1]^b[3]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi63(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[5]^b[6];//63          
assign t[1]=b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[2]=b[1]^b[2]^b[6]^b[7];              
assign t[3]=b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[4]=b[1]^b[2]^b[5]^b[7];              
assign t[5]=b[0]^b[2]^b[3]^b[6];              
assign t[6]=b[1]^b[3]^b[4]^b[7];              
assign t[7]=b[0]^b[2]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi64(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[4]^b[5];//64          
assign t[1]=b[0]^b[1]^b[3]^b[5]^b[6];              
assign t[2]=b[0]^b[1]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[4]^b[6]^b[7];              
assign t[5]=b[1]^b[2]^b[5]^b[7];              
assign t[6]=b[0]^b[2]^b[3]^b[6];              
assign t[7]=b[1]^b[3]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi65(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[4]^b[7];//65          
assign t[1]=b[0]^b[2]^b[4]^b[5];              
assign t[2]=b[0]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[3]^b[4]^b[5]^b[6];              
assign t[4]=b[0]^b[3]^b[5]^b[6];              
assign t[5]=b[0]^b[1]^b[4]^b[6]^b[7];              
assign t[6]=b[1]^b[2]^b[5]^b[7];              
assign t[7]=b[0]^b[2]^b[3]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi66(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[6];//66          
assign t[1]=b[1]^b[3]^b[4]^b[7];              
assign t[2]=b[3]^b[4]^b[5]^b[6];              
assign t[3]=b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[4]=b[2]^b[4]^b[5];              
assign t[5]=b[0]^b[3]^b[5]^b[6];              
assign t[6]=b[0]^b[1]^b[4]^b[6]^b[7];              
assign t[7]=b[1]^b[2]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi67(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[5]^b[7];//67          
assign t[1]=b[0]^b[2]^b[3]^b[6];              
assign t[2]=b[2]^b[3]^b[4]^b[5];              
assign t[3]=b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[4]=b[1]^b[3]^b[4];              
assign t[5]=b[2]^b[4]^b[5];              
assign t[6]=b[0]^b[3]^b[5]^b[6];              
assign t[7]=b[0]^b[1]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi68(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[4]^b[6]^b[7];//68          
assign t[1]=b[1]^b[2]^b[5]^b[7];              
assign t[2]=b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[2]^b[3];              
assign t[5]=b[1]^b[3]^b[4];              
assign t[6]=b[2]^b[4]^b[5];              
assign t[7]=b[0]^b[3]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi69(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[5]^b[6];//69          
assign t[1]=b[0]^b[1]^b[4]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[1]^b[2]^b[7];              
assign t[5]=b[0]^b[2]^b[3];              
assign t[6]=b[1]^b[3]^b[4];              
assign t[7]=b[2]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi70(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[4]^b[5];//70          
assign t[1]=b[0]^b[3]^b[5]^b[6];              
assign t[2]=b[0]^b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[6]^b[7];              
assign t[5]=b[1]^b[2]^b[7];              
assign t[6]=b[0]^b[2]^b[3];              
assign t[7]=b[1]^b[3]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi71(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[4];//71          
assign t[1]=b[2]^b[4]^b[5];              
assign t[2]=b[0]^b[1]^b[4]^b[5]^b[6];              
assign t[3]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[6]^b[7];              
assign t[6]=b[1]^b[2]^b[7];              
assign t[7]=b[0]^b[2]^b[3];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi72(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3];//72          
assign t[1]=b[1]^b[3]^b[4];              
assign t[2]=b[0]^b[3]^b[4]^b[5];              
assign t[3]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[4]=b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[6]^b[7];              
assign t[7]=b[1]^b[2]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi73(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[7];//73          
assign t[1]=b[0]^b[2]^b[3];              
assign t[2]=b[2]^b[3]^b[4]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[4]=b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi74(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[6]^b[7];//74          
assign t[1]=b[1]^b[2]^b[7];              
assign t[2]=b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[4]=b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[5]=b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi75(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[5]^b[6]^b[7];//75          
assign t[1]=b[0]^b[1]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[5]^b[6];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[5];              
assign t[4]=b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[5]=b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[6]=b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi76(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[4]^b[5]^b[6]^b[7];//76          
assign t[1]=b[0]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[4]^b[5];              
assign t[3]=b[0]^b[1]^b[2]^b[4]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[5]=b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[6]=b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[7]=b[3]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi77(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[4]^b[5]^b[6]^b[7];//77          
assign t[1]=b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[3]^b[4];              
assign t[3]=b[0]^b[1]^b[3]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[6]=b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[7]=b[2]^b[3]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi78(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[4]^b[5]^b[6];//78          
assign t[1]=b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[2]^b[3]^b[7];              
assign t[3]=b[0]^b[2]^b[5]^b[6];              
assign t[4]=b[0]^b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[7]=b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi79(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[4]^b[5]^b[7];//79          
assign t[1]=b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[2]=b[1]^b[2]^b[6];              
assign t[3]=b[1]^b[4]^b[5];              
assign t[4]=b[0]^b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi80(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6]^b[7];//80          
assign t[1]=b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[2]=b[0]^b[1]^b[5]^b[7];              
assign t[3]=b[0]^b[3]^b[4]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi81(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6];//81          
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[2]=b[0]^b[4]^b[6]^b[7];              
assign t[3]=b[2]^b[3]^b[6]^b[7];              
assign t[4]=b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi82(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[4]^b[5]^b[7];//82          
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[2]=b[3]^b[5]^b[6];              
assign t[3]=b[1]^b[2]^b[5]^b[6];              
assign t[4]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[5]=b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[3]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi83(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[4]^b[6]^b[7];//83          
assign t[1]=b[0]^b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[2]=b[2]^b[4]^b[5]^b[7];              
assign t[3]=b[0]^b[1]^b[4]^b[5]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[5]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[6]=b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[2]^b[3]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi84(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[5]^b[6]^b[7];//84          
assign t[1]=b[0]^b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[2]=b[1]^b[3]^b[4]^b[6];              
assign t[3]=b[0]^b[3]^b[4]^b[6];              
assign t[4]=b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[5]=b[0]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[6]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[7]=b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi85(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[4]^b[5]^b[6]^b[7];//85          
assign t[1]=b[0]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[2]^b[3]^b[5];              
assign t[3]=b[2]^b[3]^b[5]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[5]=b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[6]=b[0]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[7]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi86(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6];//86          
assign t[1]=b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[1]^b[2]^b[4]^b[7];              
assign t[3]=b[1]^b[2]^b[4]^b[6];              
assign t[4]=b[0]^b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[6]=b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[7]=b[0]^b[2]^b[3]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi87(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[4]^b[5]^b[7];//87          
assign t[1]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[2]=b[0]^b[1]^b[3]^b[6];              
assign t[3]=b[0]^b[1]^b[3]^b[5];              
assign t[4]=b[0]^b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[7]=b[1]^b[2]^b[3]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi88(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[4]^b[6];//88          
assign t[1]=b[0]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[2]=b[0]^b[2]^b[5];              
assign t[3]=b[0]^b[2]^b[4];              
assign t[4]=b[0]^b[2]^b[4]^b[5]^b[6];              
assign t[5]=b[0]^b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi89(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[5]^b[7];//89          
assign t[1]=b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[2]=b[1]^b[4];              
assign t[3]=b[1]^b[3]^b[7];              
assign t[4]=b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[5]=b[0]^b[2]^b[4]^b[5]^b[6];              
assign t[6]=b[0]^b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi90(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[4]^b[6]^b[7];//90          
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[2]=b[0]^b[3]^b[7];              
assign t[3]=b[0]^b[2]^b[6]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[4]^b[6];              
assign t[5]=b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[6]=b[0]^b[2]^b[4]^b[5]^b[6];              
assign t[7]=b[0]^b[1]^b[3]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi91(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[5]^b[6]^b[7];//91          
assign t[1]=b[0]^b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[2]=b[2]^b[6];              
assign t[3]=b[1]^b[5]^b[6];              
assign t[4]=b[1]^b[2]^b[3]^b[5];              
assign t[5]=b[0]^b[2]^b[3]^b[4]^b[6];              
assign t[6]=b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[7]=b[0]^b[2]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi92(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[4]^b[5]^b[6];//92          
assign t[1]=b[0]^b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[2]=b[1]^b[5]^b[7];              
assign t[3]=b[0]^b[4]^b[5];              
assign t[4]=b[0]^b[1]^b[2]^b[4];              
assign t[5]=b[1]^b[2]^b[3]^b[5];              
assign t[6]=b[0]^b[2]^b[3]^b[4]^b[6];              
assign t[7]=b[1]^b[3]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi93(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[4]^b[5]^b[7];//93          
assign t[1]=b[0]^b[2]^b[4]^b[5]^b[6];              
assign t[2]=b[0]^b[4]^b[6];              
assign t[3]=b[3]^b[4];              
assign t[4]=b[0]^b[1]^b[3]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[4];              
assign t[6]=b[1]^b[2]^b[3]^b[5];              
assign t[7]=b[0]^b[2]^b[3]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi94(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[4]^b[6];//94          
assign t[1]=b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[2]=b[3]^b[5];              
assign t[3]=b[2]^b[3];              
assign t[4]=b[0]^b[2]^b[6];              
assign t[5]=b[0]^b[1]^b[3]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[4];              
assign t[7]=b[1]^b[2]^b[3]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi95(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[5];//95          
assign t[1]=b[0]^b[2]^b[3]^b[4]^b[6];              
assign t[2]=b[2]^b[4]^b[7];              
assign t[3]=b[1]^b[2];              
assign t[4]=b[1]^b[5];              
assign t[5]=b[0]^b[2]^b[6];              
assign t[6]=b[0]^b[1]^b[3]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi96(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[4];//96        
assign t[1]=b[1]^b[2]^b[3]^b[5];              
assign t[2]=b[1]^b[3]^b[6];              
assign t[3]=b[0]^b[1]^b[7];              
assign t[4]=b[0]^b[4];              
assign t[5]=b[1]^b[5];              
assign t[6]=b[0]^b[2]^b[6];              
assign t[7]=b[0]^b[1]^b[3]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi97(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[7];//97          
assign t[1]=b[0]^b[1]^b[2]^b[4];              
assign t[2]=b[0]^b[2]^b[5]^b[7];              
assign t[3]=b[0]^b[6]^b[7];              
assign t[4]=b[3];              
assign t[5]=b[0]^b[4];              
assign t[6]=b[1]^b[5];              
assign t[7]=b[0]^b[2]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi98(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[6];//98          
assign t[1]=b[0]^b[1]^b[3]^b[7];              
assign t[2]=b[1]^b[4]^b[6];              
assign t[3]=b[5]^b[6]^b[7];              
assign t[4]=b[2]^b[7];              
assign t[5]=b[3];              
assign t[6]=b[0]^b[4];              
assign t[7]=b[1]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi99(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[5];//99          
assign t[1]=b[0]^b[2]^b[6];              
assign t[2]=b[0]^b[3]^b[5]^b[7];              
assign t[3]=b[4]^b[5]^b[6];              
assign t[4]=b[1]^b[6]^b[7];              
assign t[5]=b[2]^b[7];              
assign t[6]=b[3];              
assign t[7]=b[0]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi100(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[4];//100         
assign t[1]=b[1]^b[5];              
assign t[2]=b[2]^b[4]^b[6];              
assign t[3]=b[3]^b[4]^b[5]^b[7];              
assign t[4]=b[0]^b[5]^b[6];              
assign t[5]=b[1]^b[6]^b[7];              
assign t[6]=b[2]^b[7];              
assign t[7]=b[3];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi101(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3];//101         
assign t[1]=b[0]^b[4];              
assign t[2]=b[1]^b[3]^b[5];              
assign t[3]=b[2]^b[3]^b[4]^b[6];              
assign t[4]=b[4]^b[5]^b[7];              
assign t[5]=b[0]^b[5]^b[6];              
assign t[6]=b[1]^b[6]^b[7];              
assign t[7]=b[2]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi102(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[7];//102         
assign t[1]=b[3];              
assign t[2]=b[0]^b[2]^b[4]^b[7];              
assign t[3]=b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[4]=b[3]^b[4]^b[6]^b[7];              
assign t[5]=b[4]^b[5]^b[7];              
assign t[6]=b[0]^b[5]^b[6];              
assign t[7]=b[1]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi103(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[6]^b[7];//103         
assign t[1]=b[2]^b[7];              
assign t[2]=b[1]^b[3]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[4]^b[6];              
assign t[4]=b[2]^b[3]^b[5]^b[6];              
assign t[5]=b[3]^b[4]^b[6]^b[7];              
assign t[6]=b[4]^b[5]^b[7];              
assign t[7]=b[0]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi104(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[5]^b[6];//104         
assign t[1]=b[1]^b[6]^b[7];              
assign t[2]=b[0]^b[2]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[3]^b[5]^b[7];              
assign t[4]=b[1]^b[2]^b[4]^b[5];              
assign t[5]=b[2]^b[3]^b[5]^b[6];              
assign t[6]=b[3]^b[4]^b[6]^b[7];              
assign t[7]=b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi105(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[4]^b[5]^b[7];//105         
assign t[1]=b[0]^b[5]^b[6];              
assign t[2]=b[1]^b[4]^b[5]^b[6];              
assign t[3]=b[0]^b[2]^b[4]^b[6];              
assign t[4]=b[0]^b[1]^b[3]^b[4];              
assign t[5]=b[1]^b[2]^b[4]^b[5];              
assign t[6]=b[2]^b[3]^b[5]^b[6];              
assign t[7]=b[3]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi106(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[4]^b[6]^b[7];//106         
assign t[1]=b[4]^b[5]^b[7];              
assign t[2]=b[0]^b[3]^b[4]^b[5]^b[7];              
assign t[3]=b[1]^b[3]^b[5]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[7];              
assign t[5]=b[0]^b[1]^b[3]^b[4];              
assign t[6]=b[1]^b[2]^b[4]^b[5];              
assign t[7]=b[2]^b[3]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi107(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[5]^b[6];//107         
assign t[1]=b[3]^b[4]^b[6]^b[7];              
assign t[2]=b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[3]=b[0]^b[2]^b[4]^b[6]^b[7];              
assign t[4]=b[1]^b[2]^b[6]^b[7];              
assign t[5]=b[0]^b[2]^b[3]^b[7];              
assign t[6]=b[0]^b[1]^b[3]^b[4];              
assign t[7]=b[1]^b[2]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi108(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[4]^b[5];//108         
assign t[1]=b[2]^b[3]^b[5]^b[6];              
assign t[2]=b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[3]=b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[5]^b[6]^b[7];              
assign t[5]=b[1]^b[2]^b[6]^b[7];              
assign t[6]=b[0]^b[2]^b[3]^b[7];              
assign t[7]=b[0]^b[1]^b[3]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi109(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[4];//109         
assign t[1]=b[1]^b[2]^b[4]^b[5];              
assign t[2]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[3]=b[0]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[5]^b[6]^b[7];              
assign t[6]=b[1]^b[2]^b[6]^b[7];              
assign t[7]=b[0]^b[2]^b[3]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi110(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[7];//110         
assign t[1]=b[0]^b[1]^b[3]^b[4];              
assign t[2]=b[0]^b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[3]=b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[3]^b[4]^b[5]^b[6];              
assign t[5]=b[0]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[5]^b[6]^b[7];              
assign t[7]=b[1]^b[2]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi111(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[6]^b[7];//111         
assign t[1]=b[0]^b[2]^b[3]^b[7];              
assign t[2]=b[0]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[3]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[4]=b[2]^b[3]^b[4]^b[5];              
assign t[5]=b[3]^b[4]^b[5]^b[6];              
assign t[6]=b[0]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi112(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[5]^b[6]^b[7];//112         
assign t[1]=b[1]^b[2]^b[6]^b[7];              
assign t[2]=b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[3]=b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[4]=b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[5]=b[2]^b[3]^b[4]^b[5];              
assign t[6]=b[3]^b[4]^b[5]^b[6];              
assign t[7]=b[0]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi113(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[4]^b[5]^b[6]^b[7];//113         
assign t[1]=b[0]^b[1]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[4]^b[5];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[5]=b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[6]=b[2]^b[3]^b[4]^b[5];              
assign t[7]=b[3]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi114(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[4]^b[5]^b[6];//114         
assign t[1]=b[0]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[3]^b[4]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[6];              
assign t[4]=b[0]^b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[6]=b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[7]=b[2]^b[3]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi115(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[4]^b[5];//115         
assign t[1]=b[3]^b[4]^b[5]^b[6];              
assign t[2]=b[0]^b[2]^b[3]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[5]^b[7];              
assign t[4]=b[0]^b[1]^b[4]^b[5]^b[6];              
assign t[5]=b[0]^b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[7]=b[1]^b[2]^b[3]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi116(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[4]^b[7];//116         
assign t[1]=b[2]^b[3]^b[4]^b[5];              
assign t[2]=b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[4]^b[6];              
assign t[4]=b[0]^b[3]^b[4]^b[5];              
assign t[5]=b[0]^b[1]^b[4]^b[5]^b[6];              
assign t[6]=b[0]^b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi117(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[6]^b[7];//117         
assign t[1]=b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[2]=b[0]^b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[3]^b[5];              
assign t[4]=b[2]^b[3]^b[4]^b[7];              
assign t[5]=b[0]^b[3]^b[4]^b[5];              
assign t[6]=b[0]^b[1]^b[4]^b[5]^b[6];              
assign t[7]=b[0]^b[1]^b[2]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi118(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[5]^b[6]^b[7];//118         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[2]=b[0]^b[3]^b[4]^b[5]^b[6];              
assign t[3]=b[2]^b[4];              
assign t[4]=b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[5]=b[2]^b[3]^b[4]^b[7];              
assign t[6]=b[0]^b[3]^b[4]^b[5];              
assign t[7]=b[0]^b[1]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi119(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[4]^b[5]^b[6];//119         
assign t[1]=b[0]^b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[2]=b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[3]=b[1]^b[3];              
assign t[4]=b[0]^b[1]^b[2]^b[5]^b[6];              
assign t[5]=b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[6]=b[2]^b[3]^b[4]^b[7];              
assign t[7]=b[0]^b[3]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi120(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[4]^b[5];//120         
assign t[1]=b[0]^b[1]^b[4]^b[5]^b[6];              
assign t[2]=b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[3]=b[0]^b[2]^b[7];             
assign t[4]=b[0]^b[1]^b[4]^b[5];              
assign t[5]=b[0]^b[1]^b[2]^b[5]^b[6];              
assign t[6]=b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[7]=b[2]^b[3]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi121(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[4]^b[7];//121         
assign t[1]=b[0]^b[3]^b[4]^b[5];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[3]=b[1]^b[6];              
assign t[4]=b[0]^b[3]^b[4];              
assign t[5]=b[0]^b[1]^b[4]^b[5];              
assign t[6]=b[0]^b[1]^b[2]^b[5]^b[6];              
assign t[7]=b[1]^b[2]^b[3]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi122(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[6]^b[7];//122         
assign t[1]=b[2]^b[3]^b[4]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[5];              
assign t[4]=b[2]^b[3]^b[7];              
assign t[5]=b[0]^b[3]^b[4];              
assign t[6]=b[0]^b[1]^b[4]^b[5];              
assign t[7]=b[0]^b[1]^b[2]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi123(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[5]^b[6];//123         
assign t[1]=b[1]^b[2]^b[3]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[4]^b[7];              
assign t[4]=b[1]^b[2]^b[6];              
assign t[5]=b[2]^b[3]^b[7];              
assign t[6]=b[0]^b[3]^b[4];              
assign t[7]=b[0]^b[1]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi124(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[4]^b[5];//124         
assign t[1]=b[0]^b[1]^b[2]^b[5]^b[6];              
assign t[2]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[3]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[5]^b[7];              
assign t[5]=b[1]^b[2]^b[6];              
assign t[6]=b[2]^b[3]^b[7];              
assign t[7]=b[0]^b[3]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi125(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[4];//125         
assign t[1]=b[0]^b[1]^b[4]^b[5];              
assign t[2]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[3]=b[2]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[4]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[5]^b[7];              
assign t[6]=b[1]^b[2]^b[6];              
assign t[7]=b[2]^b[3]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi126(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[7];//126         
assign t[1]=b[0]^b[3]^b[4];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[3]=b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[3]^b[5]^b[6];              
assign t[5]=b[0]^b[4]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[5]^b[7];              
assign t[7]=b[1]^b[2]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi127(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[6];//127         
assign t[1]=b[2]^b[3]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[3]=b[0]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[2]^b[4]^b[5]^b[7];              
assign t[5]=b[3]^b[5]^b[6];              
assign t[6]=b[0]^b[4]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi128(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[5]^b[7];//128         
assign t[1]=b[1]^b[2]^b[6];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[5];              
assign t[3]=b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[1]^b[3]^b[4]^b[6];              
assign t[5]=b[2]^b[4]^b[5]^b[7];              
assign t[6]=b[3]^b[5]^b[6];              
assign t[7]=b[0]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi129(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[4]^b[6]^b[7];//129         
assign t[1]=b[0]^b[1]^b[5]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[4]^b[7];              
assign t[3]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[5];              
assign t[5]=b[1]^b[3]^b[4]^b[6];              
assign t[6]=b[2]^b[4]^b[5]^b[7];              
assign t[7]=b[3]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi130(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[5]^b[6];//130         
assign t[1]=b[0]^b[4]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[3]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[1]^b[2]^b[4]^b[7];              
assign t[5]=b[0]^b[2]^b[3]^b[5];              
assign t[6]=b[1]^b[3]^b[4]^b[6];              
assign t[7]=b[2]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi131(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[4]^b[5]^b[7];//131         
assign t[1]=b[3]^b[5]^b[6];              
assign t[2]=b[0]^b[2]^b[5]^b[6];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[4]=b[0]^b[1]^b[3]^b[6];              
assign t[5]=b[1]^b[2]^b[4]^b[7];              
assign t[6]=b[0]^b[2]^b[3]^b[5];              
assign t[7]=b[1]^b[3]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi132(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[4]^b[6];//132         
assign t[1]=b[2]^b[4]^b[5]^b[7];              
assign t[2]=b[1]^b[4]^b[5];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[4]=b[0]^b[2]^b[5];              
assign t[5]=b[0]^b[1]^b[3]^b[6];              
assign t[6]=b[1]^b[2]^b[4]^b[7];              
assign t[7]=b[0]^b[2]^b[3]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi133(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[5];//133         
assign t[1]=b[1]^b[3]^b[4]^b[6];              
assign t[2]=b[0]^b[3]^b[4]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[4];              
assign t[4]=b[1]^b[4];              
assign t[5]=b[0]^b[2]^b[5];              
assign t[6]=b[0]^b[1]^b[3]^b[6];              
assign t[7]=b[1]^b[2]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi134(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[4]^b[7];//134         
assign t[1]=b[0]^b[2]^b[3]^b[5];              
assign t[2]=b[2]^b[3]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[3];              
assign t[4]=b[0]^b[3]^b[7];              
assign t[5]=b[1]^b[4];              
assign t[6]=b[0]^b[2]^b[5];              
assign t[7]=b[0]^b[1]^b[3]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi135(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[6];//135         
assign t[1]=b[1]^b[2]^b[4]^b[7];              
assign t[2]=b[1]^b[2]^b[5]^b[6];              
assign t[3]=b[0]^b[1]^b[2]^b[7];              
assign t[4]=b[2]^b[6];              
assign t[5]=b[0]^b[3]^b[7];              
assign t[6]=b[1]^b[4];              
assign t[7]=b[0]^b[2]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi136(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[5];//136         
assign t[1]=b[0]^b[1]^b[3]^b[6];              
assign t[2]=b[0]^b[1]^b[4]^b[5]^b[7];              
assign t[3]=b[0]^b[1]^b[6];              
assign t[4]=b[1]^b[5]^b[7];              
assign t[5]=b[2]^b[6];              
assign t[6]=b[0]^b[3]^b[7];              
assign t[7]=b[1]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi137(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[4];//137         
assign t[1]=b[0]^b[2]^b[5];              
assign t[2]=b[0]^b[3]^b[4]^b[6];              
assign t[3]=b[0]^b[5]^b[7];              
assign t[4]=b[0]^b[4]^b[6];              
assign t[5]=b[1]^b[5]^b[7];              
assign t[6]=b[2]^b[6];              
assign t[7]=b[0]^b[3]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi138(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[7];//138         
assign t[1]=b[1]^b[4];              
assign t[2]=b[2]^b[3]^b[5]^b[7];              
assign t[3]=b[4]^b[6]^b[7];              
assign t[4]=b[3]^b[5];              
assign t[5]=b[0]^b[4]^b[6];              
assign t[6]=b[1]^b[5]^b[7];              
assign t[7]=b[2]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi139(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[6];//139         
assign t[1]=b[0]^b[3]^b[7];              
assign t[2]=b[1]^b[2]^b[4]^b[6];              
assign t[3]=b[3]^b[5]^b[6]^b[7];              
assign t[4]=b[2]^b[4]^b[7];              
assign t[5]=b[3]^b[5];              
assign t[6]=b[0]^b[4]^b[6];              
assign t[7]=b[1]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi140(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[5]^b[7];//140         
assign t[1]=b[2]^b[6];              
assign t[2]=b[0]^b[1]^b[3]^b[5];              
assign t[3]=b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[1]^b[3]^b[6];              
assign t[5]=b[2]^b[4]^b[7];              
assign t[6]=b[3]^b[5];              
assign t[7]=b[0]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi141(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[4]^b[6];//141         
assign t[1]=b[1]^b[5]^b[7];              
assign t[2]=b[0]^b[2]^b[4];              
assign t[3]=b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[4]=b[0]^b[2]^b[5]^b[7];              
assign t[5]=b[1]^b[3]^b[6];              
assign t[6]=b[2]^b[4]^b[7];              
assign t[7]=b[3]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi142(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[5];//142         
assign t[1]=b[0]^b[4]^b[6];              
assign t[2]=b[1]^b[3]^b[7];              
assign t[3]=b[0]^b[2]^b[3]^b[4]^b[5];              
assign t[4]=b[1]^b[4]^b[6];              
assign t[5]=b[0]^b[2]^b[5]^b[7];              
assign t[6]=b[1]^b[3]^b[6];              
assign t[7]=b[2]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi143(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[4]^b[7];//143         
assign t[1]=b[3]^b[5];              
assign t[2]=b[0]^b[2]^b[6]^b[7];              
assign t[3]=b[1]^b[2]^b[3]^b[4];              
assign t[4]=b[0]^b[3]^b[5]^b[7];              
assign t[5]=b[1]^b[4]^b[6];              
assign t[6]=b[0]^b[2]^b[5]^b[7];              
assign t[7]=b[1]^b[3]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi144(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[6];//144         
assign t[1]=b[2]^b[4]^b[7];              
assign t[2]=b[1]^b[5]^b[6];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[7];              
assign t[4]=b[2]^b[4]^b[6];              
assign t[5]=b[0]^b[3]^b[5]^b[7];              
assign t[6]=b[1]^b[4]^b[6];              
assign t[7]=b[0]^b[2]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi145(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[5]^b[7];//145         
assign t[1]=b[1]^b[3]^b[6];              
assign t[2]=b[0]^b[4]^b[5];              
assign t[3]=b[0]^b[1]^b[2]^b[6]^b[7];              
assign t[4]=b[1]^b[3]^b[5];              
assign t[5]=b[2]^b[4]^b[6];              
assign t[6]=b[0]^b[3]^b[5]^b[7];              
assign t[7]=b[1]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi146(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[4]^b[6];//146         
assign t[1]=b[0]^b[2]^b[5]^b[7];              
assign t[2]=b[3]^b[4];              
assign t[3]=b[0]^b[1]^b[5]^b[6];              
assign t[4]=b[0]^b[2]^b[4]^b[7];              
assign t[5]=b[1]^b[3]^b[5];              
assign t[6]=b[2]^b[4]^b[6];              
assign t[7]=b[0]^b[3]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi147(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[5]^b[7];//147         
assign t[1]=b[1]^b[4]^b[6];              
assign t[2]=b[2]^b[3];              
assign t[3]=b[0]^b[4]^b[5]^b[7];              
assign t[4]=b[1]^b[3]^b[6]^b[7];              
assign t[5]=b[0]^b[2]^b[4]^b[7];              
assign t[6]=b[1]^b[3]^b[5];              
assign t[7]=b[2]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi148(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[4]^b[6];//148         
assign t[1]=b[0]^b[3]^b[5]^b[7];              
assign t[2]=b[1]^b[2];              
assign t[3]=b[3]^b[4]^b[6];              
assign t[4]=b[0]^b[2]^b[5]^b[6]^b[7];              
assign t[5]=b[1]^b[3]^b[6]^b[7];              
assign t[6]=b[0]^b[2]^b[4]^b[7];              
assign t[7]=b[1]^b[3]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi149(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[5];//149         
assign t[1]=b[2]^b[4]^b[6];              
assign t[2]=b[0]^b[1]^b[7];              
assign t[3]=b[2]^b[3]^b[5];              
assign t[4]=b[1]^b[4]^b[5]^b[6];              
assign t[5]=b[0]^b[2]^b[5]^b[6]^b[7];              
assign t[6]=b[1]^b[3]^b[6]^b[7];              
assign t[7]=b[0]^b[2]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi150(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[4]^b[7];//150         
assign t[1]=b[1]^b[3]^b[5];              
assign t[2]=b[0]^b[6]^b[7];              
assign t[3]=b[1]^b[2]^b[4];              
assign t[4]=b[0]^b[3]^b[4]^b[5]^b[7];              
assign t[5]=b[1]^b[4]^b[5]^b[6];              
assign t[6]=b[0]^b[2]^b[5]^b[6]^b[7];              
assign t[7]=b[1]^b[3]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi151(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[6]^b[7];//151         
assign t[1]=b[0]^b[2]^b[4]^b[7];              
assign t[2]=b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[3];              
assign t[4]=b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[5]=b[0]^b[3]^b[4]^b[5]^b[7];              
assign t[6]=b[1]^b[4]^b[5]^b[6];              
assign t[7]=b[0]^b[2]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi152(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[5]^b[6]^b[7];//152         
assign t[1]=b[1]^b[3]^b[6]^b[7];              
assign t[2]=b[4]^b[5]^b[6];              
assign t[3]=b[0]^b[2];              
assign t[4]=b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[5]=b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[6]=b[0]^b[3]^b[4]^b[5]^b[7];              
assign t[7]=b[1]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi153(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[4]^b[5]^b[6];//153         
assign t[1]=b[0]^b[2]^b[5]^b[6]^b[7];              
assign t[2]=b[3]^b[4]^b[5]^b[7];              
assign t[3]=b[1];              
assign t[4]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[5]=b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[6]=b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[7]=b[0]^b[3]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi154(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[4]^b[5]^b[7];//154         
assign t[1]=b[1]^b[4]^b[5]^b[6];              
assign t[2]=b[2]^b[3]^b[4]^b[6];              
assign t[3]=b[0];              
assign t[4]=b[0]^b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[6]=b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[7]=b[2]^b[3]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi155(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[4]^b[6]^b[7];//155         
assign t[1]=b[0]^b[3]^b[4]^b[5]^b[7];              
assign t[2]=b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[3]=b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[7]=b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi156(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[5]^b[6]^b[7];//156         
assign t[1]=b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[4]^b[6];              
assign t[3]=b[6];              
assign t[4]=b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[5]=b[0]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi157(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6];//157         
assign t[1]=b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[3]^b[5]^b[7];              
assign t[3]=b[5];              
assign t[4]=b[0]^b[1]^b[2]^b[4]^b[5];              
assign t[5]=b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[6]=b[0]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[3]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi158(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[4]^b[5]^b[7];//158         
assign t[1]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[2]=b[0]^b[2]^b[4]^b[6];              
assign t[3]=b[4];              
assign t[4]=b[0]^b[1]^b[3]^b[4]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[4]^b[5];              
assign t[6]=b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[7]=b[0]^b[2]^b[3]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi159(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[4]^b[6]^b[7];//159         
assign t[1]=b[0]^b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[2]=b[1]^b[3]^b[5]^b[7];              
assign t[3]=b[3]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[3]^b[4]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[4]^b[5];              
assign t[7]=b[1]^b[2]^b[3]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi160(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[5]^b[6];//160         
assign t[1]=b[0]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[2]=b[0]^b[2]^b[4]^b[6]^b[7];              
assign t[3]=b[2]^b[6]^b[7];              
assign t[4]=b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[2]^b[3]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[3]^b[4]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi161(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[4]^b[5];//161         
assign t[1]=b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[2]=b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[3]=b[1]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[2]^b[3]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[3]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi162(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[4]^b[7];//162         
assign t[1]=b[0]^b[1]^b[2]^b[4]^b[5];              
assign t[2]=b[0]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[4]^b[5]^b[6];              
assign t[4]=b[0]^b[3]^b[4]^b[5]^b[6];              
assign t[5]=b[0]^b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[2]^b[3]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi163(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[6]^b[7];//163         
assign t[1]=b[0]^b[1]^b[3]^b[4]^b[7];              
assign t[2]=b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[3]^b[4]^b[5];              
assign t[4]=b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[5]=b[0]^b[3]^b[4]^b[5]^b[6];              
assign t[6]=b[0]^b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[1]^b[2]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi164(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[5]^b[6]^b[7];//164         
assign t[1]=b[0]^b[2]^b[3]^b[6]^b[7];              
assign t[2]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[3]=b[2]^b[3]^b[4];              
assign t[4]=b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[5]=b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[6]=b[0]^b[3]^b[4]^b[5]^b[6];              
assign t[7]=b[0]^b[1]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi165(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[4]^b[5]^b[6]^b[7];//165         
assign t[1]=b[1]^b[2]^b[5]^b[6]^b[7];              
assign t[2]=b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[3]=b[1]^b[2]^b[3]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[5]=b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[6]=b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[7]=b[0]^b[3]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi166(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[4]^b[5]^b[6];//166         
assign t[1]=b[0]^b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[6];              
assign t[4]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[6]=b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[7]=b[2]^b[3]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi167(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[4]^b[5]^b[7];//167         
assign t[1]=b[0]^b[3]^b[4]^b[5]^b[6];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[6];              
assign t[3]=b[0]^b[1]^b[5];              
assign t[4]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[7]=b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi168(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[4]^b[6]^b[7];//168         
assign t[1]=b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[5]^b[7];              
assign t[3]=b[0]^b[4]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi169(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[7];//169         
assign t[1]=b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[4]^b[6];              
assign t[3]=b[3]^b[6];              
assign t[4]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[5]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi170(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6]^b[7];//170         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[3]^b[5];              
assign t[3]=b[2]^b[5]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[5]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[6]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi171(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                         
assign t[0]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7];//171         
assign t[1]=b[0]^b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[2]^b[4];              
assign t[3]=b[1]^b[4]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[6]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[7]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi172(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];//172         
assign t[1]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[1]^b[3];              
assign t[3]=b[0]^b[3]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[5];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[7]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi173(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6];//173         
assign t[1]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[2]^b[7];              
assign t[3]=b[2]^b[4]^b[5]^b[6];              
assign t[4]=b[0]^b[1]^b[2]^b[4]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[5];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi174(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[7];//174         
assign t[1]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[2]=b[1]^b[6];              
assign t[3]=b[1]^b[3]^b[4]^b[5];              
assign t[4]=b[0]^b[1]^b[3]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[4]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[5];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi175(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6];//175         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[2]=b[0]^b[5];              
assign t[3]=b[0]^b[2]^b[3]^b[4];              
assign t[4]=b[0]^b[2]^b[5]^b[6];              
assign t[5]=b[0]^b[1]^b[3]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[4]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi176(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[5];//176         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[2]=b[4]^b[7];              
assign t[3]=b[1]^b[2]^b[3];              
assign t[4]=b[1]^b[4]^b[5];              
assign t[5]=b[0]^b[2]^b[5]^b[6];              
assign t[6]=b[0]^b[1]^b[3]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi177(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[4]^b[7];//177         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[5];              
assign t[2]=b[3]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[2];              
assign t[4]=b[0]^b[3]^b[4]^b[7];              
assign t[5]=b[1]^b[4]^b[5];              
assign t[6]=b[0]^b[2]^b[5]^b[6];              
assign t[7]=b[0]^b[1]^b[3]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi178(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[6]^b[7];//178         
assign t[1]=b[0]^b[1]^b[2]^b[4]^b[7];              
assign t[2]=b[2]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[1];              
assign t[4]=b[2]^b[3]^b[6]^b[7];              
assign t[5]=b[0]^b[3]^b[4]^b[7];              
assign t[6]=b[1]^b[4]^b[5];              
assign t[7]=b[0]^b[2]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi179(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[5]^b[6];//179         
assign t[1]=b[0]^b[1]^b[3]^b[6]^b[7];              
assign t[2]=b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[7];              
assign t[4]=b[1]^b[2]^b[5]^b[6];              
assign t[5]=b[2]^b[3]^b[6]^b[7];              
assign t[6]=b[0]^b[3]^b[4]^b[7];              
assign t[7]=b[1]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi180(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[4]^b[5];//180         
assign t[1]=b[0]^b[2]^b[5]^b[6];              
assign t[2]=b[0]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[4]^b[5]^b[7];              
assign t[5]=b[1]^b[2]^b[5]^b[6];              
assign t[6]=b[2]^b[3]^b[6]^b[7];              
assign t[7]=b[0]^b[3]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi181(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[4]^b[7];//181         
assign t[1]=b[1]^b[4]^b[5];              
assign t[2]=b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[5]^b[6];              
assign t[4]=b[0]^b[3]^b[4]^b[6];              
assign t[5]=b[0]^b[1]^b[4]^b[5]^b[7];              
assign t[6]=b[1]^b[2]^b[5]^b[6];              
assign t[7]=b[2]^b[3]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi182(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[6]^b[7];//182         
assign t[1]=b[0]^b[3]^b[4]^b[7];              
assign t[2]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[4]^b[5];              
assign t[4]=b[2]^b[3]^b[5]^b[7];              
assign t[5]=b[0]^b[3]^b[4]^b[6];              
assign t[6]=b[0]^b[1]^b[4]^b[5]^b[7];              
assign t[7]=b[1]^b[2]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi183(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[5]^b[6];//183         
assign t[1]=b[2]^b[3]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[3]^b[4]^b[7];              
assign t[4]=b[1]^b[2]^b[4]^b[6];              
assign t[5]=b[2]^b[3]^b[5]^b[7];              
assign t[6]=b[0]^b[3]^b[4]^b[6];              
assign t[7]=b[0]^b[1]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi184(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[4]^b[5]^b[7];//184         
assign t[1]=b[1]^b[2]^b[5]^b[6];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[3]=b[2]^b[3]^b[6];              
assign t[4]=b[0]^b[1]^b[3]^b[5];              
assign t[5]=b[1]^b[2]^b[4]^b[6];              
assign t[6]=b[2]^b[3]^b[5]^b[7];              
assign t[7]=b[0]^b[3]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi185(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[4]^b[6];//185         
assign t[1]=b[0]^b[1]^b[4]^b[5]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[3]=b[1]^b[2]^b[5];              
assign t[4]=b[0]^b[2]^b[4];              
assign t[5]=b[0]^b[1]^b[3]^b[5];              
assign t[6]=b[1]^b[2]^b[4]^b[6];              
assign t[7]=b[2]^b[3]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi186(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[5]^b[7];//186         
assign t[1]=b[0]^b[3]^b[4]^b[6];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[4];              
assign t[3]=b[0]^b[1]^b[4]^b[7];              
assign t[4]=b[1]^b[3]^b[7];              
assign t[5]=b[0]^b[2]^b[4];              
assign t[6]=b[0]^b[1]^b[3]^b[5];              
assign t[7]=b[1]^b[2]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi187(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[4]^b[6];//187         
assign t[1]=b[2]^b[3]^b[5]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[3];              
assign t[3]=b[0]^b[3]^b[6];              
assign t[4]=b[0]^b[2]^b[6]^b[7];              
assign t[5]=b[1]^b[3]^b[7];              
assign t[6]=b[0]^b[2]^b[4];              
assign t[7]=b[0]^b[1]^b[3]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi188(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[5];//188         
assign t[1]=b[1]^b[2]^b[4]^b[6];              
assign t[2]=b[0]^b[1]^b[2]^b[7];              
assign t[3]=b[2]^b[5];              
assign t[4]=b[1]^b[5]^b[6];              
assign t[5]=b[0]^b[2]^b[6]^b[7];              
assign t[6]=b[1]^b[3]^b[7];              
assign t[7]=b[0]^b[2]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi189(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[4];//189         
assign t[1]=b[0]^b[1]^b[3]^b[5];              
assign t[2]=b[0]^b[1]^b[6];              
assign t[3]=b[1]^b[4]^b[7];              
assign t[4]=b[0]^b[4]^b[5];              
assign t[5]=b[1]^b[5]^b[6];              
assign t[6]=b[0]^b[2]^b[6]^b[7];              
assign t[7]=b[1]^b[3]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi190(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[7];//190         
assign t[1]=b[0]^b[2]^b[4];              
assign t[2]=b[0]^b[5]^b[7];              
assign t[3]=b[0]^b[3]^b[6]^b[7];              
assign t[4]=b[3]^b[4];              
assign t[5]=b[0]^b[4]^b[5];              
assign t[6]=b[1]^b[5]^b[6];              
assign t[7]=b[0]^b[2]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi191(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[6]^b[7];//191         
assign t[1]=b[1]^b[3]^b[7];              
assign t[2]=b[4]^b[6]^b[7];              
assign t[3]=b[2]^b[5]^b[6];              
assign t[4]=b[2]^b[3];              
assign t[5]=b[3]^b[4];              
assign t[6]=b[0]^b[4]^b[5];              
assign t[7]=b[1]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi192(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[5]^b[6];//192         
assign t[1]=b[0]^b[2]^b[6]^b[7];              
assign t[2]=b[3]^b[5]^b[6]^b[7];              
assign t[3]=b[1]^b[4]^b[5]^b[7];              
assign t[4]=b[1]^b[2];              
assign t[5]=b[2]^b[3];              
assign t[6]=b[3]^b[4];              
assign t[7]=b[0]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi193(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[4]^b[5];//193         
assign t[1]=b[1]^b[5]^b[6];              
assign t[2]=b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[3]^b[4]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[7];              
assign t[5]=b[1]^b[2];              
assign t[6]=b[2]^b[3];              
assign t[7]=b[3]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi194(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[4];//194         
assign t[1]=b[0]^b[4]^b[5];              
assign t[2]=b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[3]=b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[7];              
assign t[6]=b[1]^b[2];              
assign t[7]=b[2]^b[3];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi195(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3];//195         
assign t[1]=b[3]^b[4];              
assign t[2]=b[0]^b[2]^b[3]^b[4]^b[5];              
assign t[3]=b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[4]=b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[7];              
assign t[7]=b[1]^b[2];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi196(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2];//196         
assign t[1]=b[2]^b[3];              
assign t[2]=b[1]^b[2]^b[3]^b[4];              
assign t[3]=b[0]^b[1]^b[3]^b[4]^b[5];              
assign t[4]=b[4]^b[5]^b[6];              
assign t[5]=b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi197(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[7];//197         
assign t[1]=b[1]^b[2];              
assign t[2]=b[0]^b[1]^b[2]^b[3]^b[7];              
assign t[3]=b[0]^b[2]^b[3]^b[4]^b[7];              
assign t[4]=b[3]^b[4]^b[5]^b[7];              
assign t[5]=b[4]^b[5]^b[6];              
assign t[6]=b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi198(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[6]^b[7];//198         
assign t[1]=b[0]^b[1]^b[7];              
assign t[2]=b[0]^b[1]^b[2]^b[6]^b[7];              
assign t[3]=b[1]^b[2]^b[3]^b[6];              
assign t[4]=b[2]^b[3]^b[4]^b[6];              
assign t[5]=b[3]^b[4]^b[5]^b[7];              
assign t[6]=b[4]^b[5]^b[6];              
assign t[7]=b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi199(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[5]^b[6]^b[7];//199         
assign t[1]=b[0]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[5]^b[6];              
assign t[3]=b[0]^b[1]^b[2]^b[5];              
assign t[4]=b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[5]=b[2]^b[3]^b[4]^b[6];              
assign t[6]=b[3]^b[4]^b[5]^b[7];              
assign t[7]=b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi200(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[4]^b[5]^b[6];//200         
assign t[1]=b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[4]^b[5]^b[7];              
assign t[3]=b[0]^b[1]^b[4];              
assign t[4]=b[0]^b[1]^b[2]^b[4]^b[6];              
assign t[5]=b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[6]=b[2]^b[3]^b[4]^b[6];              
assign t[7]=b[3]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi201(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[4]^b[5]^b[7];//201         
assign t[1]=b[4]^b[5]^b[6];              
assign t[2]=b[3]^b[4]^b[6];              
assign t[3]=b[0]^b[3];              
assign t[4]=b[0]^b[1]^b[3]^b[5]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[4]^b[6];              
assign t[6]=b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[7]=b[2]^b[3]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi202(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[4]^b[6];//202         
assign t[1]=b[3]^b[4]^b[5]^b[7];              
assign t[2]=b[2]^b[3]^b[5];              
assign t[3]=b[2];              
assign t[4]=b[0]^b[2]^b[4]^b[6];              
assign t[5]=b[0]^b[1]^b[3]^b[5]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[4]^b[6];              
assign t[7]=b[1]^b[2]^b[3]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi203(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[5]^b[7];//203         
assign t[1]=b[2]^b[3]^b[4]^b[6];              
assign t[2]=b[1]^b[2]^b[4];              
assign t[3]=b[1]^b[7];              
assign t[4]=b[1]^b[3]^b[5]^b[7];              
assign t[5]=b[0]^b[2]^b[4]^b[6];              
assign t[6]=b[0]^b[1]^b[3]^b[5]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi204(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[4]^b[6];//204         
assign t[1]=b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[2]=b[0]^b[1]^b[3];              
assign t[3]=b[0]^b[6];              
assign t[4]=b[0]^b[2]^b[4]^b[6]^b[7];              
assign t[5]=b[1]^b[3]^b[5]^b[7];              
assign t[6]=b[0]^b[2]^b[4]^b[6];              
assign t[7]=b[0]^b[1]^b[3]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi205(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3]^b[5]^b[7];//205      
assign t[1]=b[0]^b[1]^b[2]^b[4]^b[6];              
assign t[2]=b[0]^b[2];              
assign t[3]=b[5]^b[7];              
assign t[4]=b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[2]^b[4]^b[6]^b[7];              
assign t[6]=b[1]^b[3]^b[5]^b[7];              
assign t[7]=b[0]^b[2]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi206(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[4]^b[6];//206         
assign t[1]=b[0]^b[1]^b[3]^b[5]^b[7];              
assign t[2]=b[1];              
assign t[3]=b[4]^b[6];              
assign t[4]=b[0]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[2]^b[4]^b[6]^b[7];              
assign t[7]=b[1]^b[3]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi207(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[5]^b[7];//207         
assign t[1]=b[0]^b[2]^b[4]^b[6];              
assign t[2]=b[0];              
assign t[3]=b[3]^b[5]^b[7];              
assign t[4]=b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[2]^b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi208(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[4]^b[6]^b[7];//208         
assign t[1]=b[1]^b[3]^b[5]^b[7];              
assign t[2]=b[7];              
assign t[3]=b[2]^b[4]^b[6]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[5]=b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[1]^b[3]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi209(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[5]^b[6]^b[7];//209         
assign t[1]=b[0]^b[2]^b[4]^b[6]^b[7];              
assign t[2]=b[6];              
assign t[3]=b[1]^b[3]^b[5]^b[6];              
assign t[4]=b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[5]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[6]=b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[2]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi210(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[4]^b[5]^b[6]^b[7];//210         
assign t[1]=b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[2]=b[5];              
assign t[3]=b[0]^b[2]^b[4]^b[5]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[5]=b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[6]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[7]=b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi211(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[4]^b[5]^b[6]^b[7];//211        
assign t[1]=b[0]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[4];              
assign t[3]=b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[6];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[6]=b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[7]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi212(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6];//212         
assign t[1]=b[1]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[3]^b[7];              
assign t[3]=b[0]^b[2]^b[3]^b[5]^b[6];              
assign t[4]=b[0]^b[1]^b[2]^b[5]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[6];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[7]=b[1]^b[2]^b[3]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi213(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[4]^b[5];//213         
assign t[1]=b[0]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[2]=b[2]^b[6]^b[7];              
assign t[3]=b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[4]=b[0]^b[1]^b[4]^b[6];              
assign t[5]=b[0]^b[1]^b[2]^b[5]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[6];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi214(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[4]^b[7];//214         
assign t[1]=b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[2]=b[1]^b[5]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[3]^b[4]^b[6];              
assign t[4]=b[0]^b[3]^b[5];              
assign t[5]=b[0]^b[1]^b[4]^b[6];              
assign t[6]=b[0]^b[1]^b[2]^b[5]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi215(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[6];//215         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[4]^b[7];              
assign t[2]=b[0]^b[4]^b[5]^b[6];              
assign t[3]=b[0]^b[2]^b[3]^b[5]^b[7];              
assign t[4]=b[2]^b[4];              
assign t[5]=b[0]^b[3]^b[5];              
assign t[6]=b[0]^b[1]^b[4]^b[6];              
assign t[7]=b[0]^b[1]^b[2]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi216(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[5]^b[7];//216         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[6];              
assign t[2]=b[3]^b[4]^b[5];              
assign t[3]=b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[4]=b[1]^b[3];              
assign t[5]=b[2]^b[4];              
assign t[6]=b[0]^b[3]^b[5];              
assign t[7]=b[0]^b[1]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi217(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[4]^b[6];//217         
assign t[1]=b[0]^b[1]^b[2]^b[5]^b[7];              
assign t[2]=b[2]^b[3]^b[4];              
assign t[3]=b[0]^b[1]^b[3]^b[5]^b[6];              
assign t[4]=b[0]^b[2]^b[7];              
assign t[5]=b[1]^b[3];              
assign t[6]=b[2]^b[4];              
assign t[7]=b[0]^b[3]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi218(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[5];//218         
assign t[1]=b[0]^b[1]^b[4]^b[6];              
assign t[2]=b[1]^b[2]^b[3]^b[7];              
assign t[3]=b[0]^b[2]^b[4]^b[5];              
assign t[4]=b[1]^b[6];              
assign t[5]=b[0]^b[2]^b[7];              
assign t[6]=b[1]^b[3];              
assign t[7]=b[2]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi219(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[4];//219         
assign t[1]=b[0]^b[3]^b[5];              
assign t[2]=b[0]^b[1]^b[2]^b[6];              
assign t[3]=b[1]^b[3]^b[4]^b[7];              
assign t[4]=b[0]^b[5];              
assign t[5]=b[1]^b[6];              
assign t[6]=b[0]^b[2]^b[7];              
assign t[7]=b[1]^b[3];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi220(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3];//220         
assign t[1]=b[2]^b[4];              
assign t[2]=b[0]^b[1]^b[5];              
assign t[3]=b[0]^b[2]^b[3]^b[6];              
assign t[4]=b[4]^b[7];              
assign t[5]=b[0]^b[5];              
assign t[6]=b[1]^b[6];              
assign t[7]=b[0]^b[2]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi221(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[7];//221         
assign t[1]=b[1]^b[3];              
assign t[2]=b[0]^b[4]^b[7];              
assign t[3]=b[1]^b[2]^b[5]^b[7];              
assign t[4]=b[3]^b[6]^b[7];              
assign t[5]=b[4]^b[7];              
assign t[6]=b[0]^b[5];              
assign t[7]=b[1]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi222(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[6];//222         
assign t[1]=b[0]^b[2]^b[7];              
assign t[2]=b[3]^b[6];              
assign t[3]=b[0]^b[1]^b[4]^b[6]^b[7];              
assign t[4]=b[2]^b[5]^b[6]^b[7];              
assign t[5]=b[3]^b[6]^b[7];              
assign t[6]=b[4]^b[7];              
assign t[7]=b[0]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi223(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[5];//223         
assign t[1]=b[1]^b[6];              
assign t[2]=b[2]^b[5]^b[7];              
assign t[3]=b[0]^b[3]^b[5]^b[6];              
assign t[4]=b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[2]^b[5]^b[6]^b[7];              
assign t[6]=b[3]^b[6]^b[7];              
assign t[7]=b[4]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi224(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[4]^b[7];//224         
assign t[1]=b[0]^b[5];              
assign t[2]=b[1]^b[4]^b[6]^b[7];              
assign t[3]=b[2]^b[4]^b[5];              
assign t[4]=b[0]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[2]^b[5]^b[6]^b[7];              
assign t[7]=b[3]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi225(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[6]^b[7];//225        
assign t[1]=b[4]^b[7];              
assign t[2]=b[0]^b[3]^b[5]^b[6]^b[7];              
assign t[3]=b[1]^b[3]^b[4];              
assign t[4]=b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[0]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[2]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi226(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[5]^b[6]^b[7];//226         
assign t[1]=b[3]^b[6]^b[7];              
assign t[2]=b[2]^b[4]^b[5]^b[6];              
assign t[3]=b[0]^b[2]^b[3];              
assign t[4]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[0]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[1]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi227(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[4]^b[5]^b[6]^b[7];//227         
assign t[1]=b[2]^b[5]^b[6]^b[7];              
assign t[2]=b[1]^b[3]^b[4]^b[5];              
assign t[3]=b[1]^b[2]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[0]^b[3]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi228(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[3]^b[4]^b[5]^b[6]^b[7];//228         
assign t[1]=b[1]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[2]^b[3]^b[4];              
assign t[3]=b[0]^b[1]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi229(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[4]^b[5]^b[6]^b[7];//229         
assign t[1]=b[0]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[1]^b[2]^b[3];              
assign t[3]=b[0]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi230(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];//230         
assign t[1]=b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[1]^b[2];              
assign t[3]=b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[4];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi231(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];//231         
assign t[1]=b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[1];              
assign t[3]=b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[4];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi232(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6];//232         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[0]^b[7];              
assign t[3]=b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[4]=b[0]^b[1]^b[2]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[3];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[4];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi233(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5];//233         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5]^b[6];              
assign t[2]=b[6]^b[7];              
assign t[3]=b[1]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[4]=b[0]^b[1]^b[6];              
assign t[5]=b[0]^b[1]^b[2]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[3];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi234(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[4];//234         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[4]^b[5];              
assign t[2]=b[5]^b[6];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[4]^b[6]^b[7];              
assign t[4]=b[0]^b[5]^b[7];              
assign t[5]=b[0]^b[1]^b[6];              
assign t[6]=b[0]^b[1]^b[2]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[3];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi235(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3];//235         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[4];              
assign t[2]=b[4]^b[5];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[5]^b[6];              
assign t[4]=b[4]^b[6]^b[7];              
assign t[5]=b[0]^b[5]^b[7];              
assign t[6]=b[0]^b[1]^b[6];              
assign t[7]=b[0]^b[1]^b[2]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi236(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[7];//236         
assign t[1]=b[0]^b[1]^b[2]^b[3];              
assign t[2]=b[3]^b[4]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[4]^b[5]^b[7];              
assign t[4]=b[3]^b[5]^b[6]^b[7];              
assign t[5]=b[4]^b[6]^b[7];              
assign t[6]=b[0]^b[5]^b[7];              
assign t[7]=b[0]^b[1]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi237(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[6];//37          
assign t[1]=b[0]^b[1]^b[2]^b[7];              
assign t[2]=b[2]^b[3]^b[6];              
assign t[3]=b[0]^b[1]^b[3]^b[4]^b[6]^b[7];              
assign t[4]=b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[5]=b[3]^b[5]^b[6]^b[7];              
assign t[6]=b[4]^b[6]^b[7];              
assign t[7]=b[0]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi238(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[5]^b[7];//238         
assign t[1]=b[0]^b[1]^b[6];              
assign t[2]=b[1]^b[2]^b[5];              
assign t[3]=b[0]^b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[4]=b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[5]=b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[6]=b[3]^b[5]^b[6]^b[7];              
assign t[7]=b[4]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi239(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[4]^b[6]^b[7];//239         
assign t[1]=b[0]^b[5]^b[7];              
assign t[2]=b[0]^b[1]^b[4]^b[7];              
assign t[3]=b[1]^b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[4]=b[0]^b[2]^b[3]^b[4]^b[5];              
assign t[5]=b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[6]=b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[7]=b[3]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi240(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[5]^b[6]^b[7];//240         
assign t[1]=b[4]^b[6]^b[7];              
assign t[2]=b[0]^b[3]^b[6];              
assign t[3]=b[0]^b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[4]=b[1]^b[2]^b[3]^b[4];              
assign t[5]=b[0]^b[2]^b[3]^b[4]^b[5];              
assign t[6]=b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[7]=b[2]^b[4]^b[5]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi241(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[4]^b[5]^b[6]^b[7];//241         
assign t[1]=b[3]^b[5]^b[6]^b[7];              
assign t[2]=b[2]^b[5];              
assign t[3]=b[0]^b[2]^b[3]^b[4]^b[5]^b[7];              
assign t[4]=b[0]^b[1]^b[2]^b[3]^b[7];              
assign t[5]=b[1]^b[2]^b[3]^b[4];              
assign t[6]=b[0]^b[2]^b[3]^b[4]^b[5];              
assign t[7]=b[1]^b[3]^b[4]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi242(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[3]^b[4]^b[5]^b[6];//242         
assign t[1]=b[2]^b[4]^b[5]^b[6]^b[7];              
assign t[2]=b[1]^b[4]^b[7];              
assign t[3]=b[1]^b[2]^b[3]^b[4]^b[6];              
assign t[4]=b[0]^b[1]^b[2]^b[6]^b[7];              
assign t[5]=b[0]^b[1]^b[2]^b[3]^b[7];              
assign t[6]=b[1]^b[2]^b[3]^b[4];              
assign t[7]=b[0]^b[2]^b[3]^b[4]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi243(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2]^b[3]^b[4]^b[5];//243         
assign t[1]=b[1]^b[3]^b[4]^b[5]^b[6];              
assign t[2]=b[0]^b[3]^b[6]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[3]^b[5]^b[7];              
assign t[4]=b[0]^b[1]^b[5]^b[6];              
assign t[5]=b[0]^b[1]^b[2]^b[6]^b[7];              
assign t[6]=b[0]^b[1]^b[2]^b[3]^b[7];              
assign t[7]=b[1]^b[2]^b[3]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi244(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[3]^b[4];//244         
assign t[1]=b[0]^b[2]^b[3]^b[4]^b[5];              
assign t[2]=b[2]^b[5]^b[6];              
assign t[3]=b[0]^b[1]^b[2]^b[4]^b[6]^b[7];              
assign t[4]=b[0]^b[4]^b[5]^b[7];              
assign t[5]=b[0]^b[1]^b[5]^b[6];              
assign t[6]=b[0]^b[1]^b[2]^b[6]^b[7];              
assign t[7]=b[0]^b[1]^b[2]^b[3]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi245(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[3]^b[7];//245         
assign t[1]=b[1]^b[2]^b[3]^b[4];              
assign t[2]=b[1]^b[4]^b[5]^b[7];              
assign t[3]=b[0]^b[1]^b[3]^b[5]^b[6]^b[7];              
assign t[4]=b[3]^b[4]^b[6];              
assign t[5]=b[0]^b[4]^b[5]^b[7];              
assign t[6]=b[0]^b[1]^b[5]^b[6];              
assign t[7]=b[0]^b[1]^b[2]^b[6]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi246(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[2]^b[6]^b[7];//246         
assign t[1]=b[0]^b[1]^b[2]^b[3]^b[7];              
assign t[2]=b[0]^b[3]^b[4]^b[6]^b[7];              
assign t[3]=b[0]^b[2]^b[4]^b[5]^b[6];              
assign t[4]=b[2]^b[3]^b[5];              
assign t[5]=b[3]^b[4]^b[6];              
assign t[6]=b[0]^b[4]^b[5]^b[7];              
assign t[7]=b[0]^b[1]^b[5]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi247(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[5]^b[6];//247         
assign t[1]=b[0]^b[1]^b[2]^b[6]^b[7];              
assign t[2]=b[2]^b[3]^b[5]^b[6]^b[7];              
assign t[3]=b[1]^b[3]^b[4]^b[5]^b[7];              
assign t[4]=b[1]^b[2]^b[4];              
assign t[5]=b[2]^b[3]^b[5];              
assign t[6]=b[3]^b[4]^b[6];              
assign t[7]=b[0]^b[4]^b[5]^b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi248(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[4]^b[5]^b[7];//248         
assign t[1]=b[0]^b[1]^b[5]^b[6];              
assign t[2]=b[1]^b[2]^b[4]^b[5]^b[6];              
assign t[3]=b[0]^b[2]^b[3]^b[4]^b[6];              
assign t[4]=b[0]^b[1]^b[3];              
assign t[5]=b[1]^b[2]^b[4];              
assign t[6]=b[2]^b[3]^b[5];              
assign t[7]=b[3]^b[4]^b[6];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi249(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[3]^b[4]^b[6];//249         
assign t[1]=b[0]^b[4]^b[5]^b[7];              
assign t[2]=b[0]^b[1]^b[3]^b[4]^b[5];              
assign t[3]=b[1]^b[2]^b[3]^b[5];              
assign t[4]=b[0]^b[2];              
assign t[5]=b[0]^b[1]^b[3];              
assign t[6]=b[1]^b[2]^b[4];              
assign t[7]=b[2]^b[3]^b[5];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi250(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[2]^b[3]^b[5];//250         
assign t[1]=b[3]^b[4]^b[6];              
assign t[2]=b[0]^b[2]^b[3]^b[4]^b[7];              
assign t[3]=b[0]^b[1]^b[2]^b[4];              
assign t[4]=b[1];              
assign t[5]=b[0]^b[2];              
assign t[6]=b[0]^b[1]^b[3];              
assign t[7]=b[1]^b[2]^b[4];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi251(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1]^b[2]^b[4];//251         
assign t[1]=b[2]^b[3]^b[5];              
assign t[2]=b[1]^b[2]^b[3]^b[6];              
assign t[3]=b[0]^b[1]^b[3]^b[7];              
assign t[4]=b[0];              
assign t[5]=b[1];              
assign t[6]=b[0]^b[2];              
assign t[7]=b[0]^b[1]^b[3];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi252(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[1]^b[3];//252         
assign t[1]=b[1]^b[2]^b[4];              
assign t[2]=b[0]^b[1]^b[2]^b[5];              
assign t[3]=b[0]^b[2]^b[6];              
assign t[4]=b[7];              
assign t[5]=b[0];              
assign t[6]=b[1];              
assign t[7]=b[0]^b[2];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi253(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0]^b[2];//253         
assign t[1]=b[0]^b[1]^b[3];              
assign t[2]=b[0]^b[1]^b[4];              
assign t[3]=b[1]^b[5];              
assign t[4]=b[6];              
assign t[5]=b[7];              
assign t[6]=b[0];              
assign t[7]=b[1];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi254(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[1];//254        
assign t[1]=b[0]^b[2];              
assign t[2]=b[0]^b[3];              
assign t[3]=b[0]^b[4];              
assign t[4]=b[5];              
assign t[5]=b[6];              
assign t[6]=b[7];              
assign t[7]=b[0];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
module multi255(b,t);
input [7:0]b;                                             
output [7:0] t;                                           
wire   [7:0] t;                                           
                                                          
assign t[0]=b[0];//255         
assign t[1]=b[1];              
assign t[2]=b[2];              
assign t[3]=b[3];              
assign t[4]=b[4];              
assign t[5]=b[5];              
assign t[6]=b[6];              
assign t[7]=b[7];              
                                                          
                                                          
                                                          
endmodule                                                 
//------------------------------------------------------  
