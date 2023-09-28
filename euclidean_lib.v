module mux_6(a,b,sel,out); //0-->a,1-->b

input [5:0]a,b;
input sel;

output [5:0]out;
wire [5:0]out;

assign out=sel?b:a;

endmodule

module mux_8(a,b,sel,out); //0-->a,1-->b

input [7:0]a,b;
input sel;

output [7:0]out;
wire [7:0]out;

assign out=sel?b:a;

endmodule

module mux_1(a,b,sel,out); //0-->a,1-->b

input a,b;
input sel;

output out;
wire out;

assign out=sel?b:a;

endmodule


module mux8(a,b,sel,enable, out,clk,reset); //0-->a,1-->b



input [7:0]a,b;
input sel,clk,reset;
input enable;

output [7:0]out;
reg [7:0]out;

always@(posedge clk)
begin
 if(reset==0)
 begin
    out  <=#1  0;
 end
 
 if(reset==1)
 begin
 out <=#1  enable== 1'b0 ? out : sel? a : b;
 end
end

endmodule




/***********************************************************/

module multiplier(a,b,c);

input [7:0]a,b;
output [7:0]c;

wire [7:0]c;
wire [14:0]e;

assign e[0]=(a[0]&b[0]);
assign e[1]=(a[0]&b[1])^(a[1]&b[0]);
assign e[2]=(a[0]&b[2])^(a[1]&b[1])^(a[2]&b[0]);
assign e[3]=(a[0]&b[3])^(a[1]&b[2])^(a[2]&b[1])^(a[3]&b[0]);
assign e[4]=(a[0]&b[4])^(a[1]&b[3])^(a[2]&b[2])^(a[3]&b[1])^(a[4]&b[0]);
assign e[5]=(a[0]&b[5])^(a[1]&b[4])^(a[2]&b[3])^(a[3]&b[2])^(a[4]&b[1])^(a[5]&b[0]);
assign e[6]=(a[0]&b[6])^(a[1]&b[5])^(a[2]&b[4])^(a[3]&b[3])^(a[4]&b[2])^(a[5]&b[1])^(a[6]&b[0]);
assign e[7]=(a[0]&b[7])^(a[1]&b[6])^(a[2]&b[5])^(a[3]&b[4])^(a[4]&b[3])^(a[5]&b[2])^(a[6]&b[1])^(a[7]&b[0]);

assign e[8]=(a[1]&b[7])^(a[2]&b[6])^(a[3]&b[5])^(a[4]&b[4])^(a[5]&b[3])^(a[6]&b[2])^(a[7]&b[1]);
assign e[9]=(a[2]&b[7])^(a[3]&b[6])^(a[4]&b[5])^(a[5]&b[4])^(a[6]&b[3])^(a[7]&b[2]);
assign e[10]=(a[3]&b[7])^(a[4]&b[6])^(a[5]&b[5])^(a[6]&b[4])^(a[7]&b[3]);
assign e[11]=(a[4]&b[7])^(a[5]&b[6])^(a[6]&b[5])^(a[7]&b[4]);
assign e[12]=(a[5]&b[7])^(a[6]&b[6])^(a[7]&b[5]);
assign e[13]=(a[6]&b[7])^(a[7]&b[6]);
assign e[14]=(a[7]&b[7]);



assign  c[0]=e[0]^e[8]^e[12]^e[13]^e[14];
assign  c[1]=e[1]^e[9]^e[13]^e[14];
assign  c[2]=e[2]^e[8]^e[10]^e[12]^e[13];
assign  c[3]=e[3]^e[8]^e[9]^e[11]^e[12];
assign  c[4]=e[4]^e[8]^e[9]^e[10]^e[14];
assign  c[5]=e[5]^e[9]^e[10]^e[11];
assign  c[6]=e[6]^e[10]^e[11]^e[12];
assign  c[7]=e[7]^e[11]^e[12]^e[13];


endmodule








/******************************chien-search***************************************/


module multiplier_column1_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;




multi1(.b(b),.t(t1));
multi2(.b(b),.t(t2));
multi3(.b(b),.t(t3));
multi4(.b(b),.t(t4));
multi5(.b(b),.t(t5));
multi6(.b(b),.t(t6));
multi7(.b(b),.t(t7));
multi8(.b(b),.t(t8));
multi9(.b(b),.t(t9));
multi10(.b(b),.t(t10));
multi11(.b(b),.t(t11));
multi12(.b(b),.t(t12));
multi13(.b(b),.t(t13));
multi14(.b(b),.t(t14));
multi15(.b(b),.t(t15));
multi16(.b(b),.t(t16));







assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;


endmodule

//--------------------------------------------------------------------------------------------

module multiplier_column2_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;



multi2(.b(b),.t(t1));
multi4(.b(b),.t(t2));
multi6(.b(b),.t(t3));
multi8(.b(b),.t(t4));
multi10(.b(b),.t(t5));
multi12(.b(b),.t(t6));
multi14(.b(b),.t(t7));
multi16(.b(b),.t(t8));
multi18(.b(b),.t(t9));
multi20(.b(b),.t(t10));
multi22(.b(b),.t(t11));
multi24(.b(b),.t(t12));
multi26(.b(b),.t(t13));
multi28(.b(b),.t(t14));
multi30(.b(b),.t(t15));
multi32(.b(b),.t(t16));


assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;


endmodule




//--------------------------------------------------------------------------------------------




module multiplier_column3_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;


multi3(.b(b),.t(t1));
multi6(.b(b),.t(t2));
multi9(.b(b),.t(t3));
multi12(.b(b),.t(t4));
multi15(.b(b),.t(t5));
multi18(.b(b),.t(t6));
multi21(.b(b),.t(t7));
multi24(.b(b),.t(t8));
multi27(.b(b),.t(t9));
multi30(.b(b),.t(t10));
multi33(.b(b),.t(t11));
multi36(.b(b),.t(t12));
multi39(.b(b),.t(t13));
multi42(.b(b),.t(t14));
multi45(.b(b),.t(t15));
multi48(.b(b),.t(t16));


assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule
//--------------------------------------------------------------------------------------





module multiplier_column4_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;




multi4(.b(b),.t(t1));
multi8(.b(b),.t(t2));
multi12(.b(b),.t(t3));
multi16(.b(b),.t(t4));
multi20(.b(b),.t(t5));
multi24(.b(b),.t(t6));
multi28(.b(b),.t(t7));
multi32(.b(b),.t(t8));
multi36(.b(b),.t(t9));
multi40(.b(b),.t(t10));
multi44(.b(b),.t(t11));
multi48(.b(b),.t(t12));
multi52(.b(b),.t(t13));
multi56(.b(b),.t(t14));
multi60(.b(b),.t(t15));
multi64(.b(b),.t(t16));



assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule


//--------------------------------------------------------------









module multiplier_column5_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;



multi5(.b(b),.t(t1));
multi10(.b(b),.t(t2));
multi15(.b(b),.t(t3));
multi20(.b(b),.t(t4));
multi25(.b(b),.t(t5));
multi30(.b(b),.t(t6));
multi35(.b(b),.t(t7));
multi40(.b(b),.t(t8));
multi45(.b(b),.t(t9));
multi50(.b(b),.t(t10));
multi55(.b(b),.t(t11));
multi60(.b(b),.t(t12));
multi65(.b(b),.t(t13));
multi70(.b(b),.t(t14));
multi75(.b(b),.t(t15));
multi80(.b(b),.t(t16));







assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule




//-----------------------------------------------------------------------------------------------------
module multiplier_column6_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;



multi6(.b(b),.t(t1));
multi12(.b(b),.t(t2));
multi18(.b(b),.t(t3));
multi24(.b(b),.t(t4));
multi30(.b(b),.t(t5));
multi36(.b(b),.t(t6));
multi42(.b(b),.t(t7));
multi48(.b(b),.t(t8));
multi54(.b(b),.t(t9));
multi60(.b(b),.t(t10));
multi66(.b(b),.t(t11));
multi72(.b(b),.t(t12));
multi78(.b(b),.t(t13));
multi84(.b(b),.t(t14));
multi90(.b(b),.t(t15));
multi96(.b(b),.t(t16));


assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column7_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;

multi7(.b(b),.t(t1));
multi14(.b(b),.t(t2));
multi21(.b(b),.t(t3));
multi28(.b(b),.t(t4));
multi35(.b(b),.t(t5));
multi42(.b(b),.t(t6));
multi49(.b(b),.t(t7));
multi56(.b(b),.t(t8));
multi63(.b(b),.t(t9));
multi70(.b(b),.t(t10));
multi77(.b(b),.t(t11));
multi84(.b(b),.t(t12));
multi91(.b(b),.t(t13));
multi98(.b(b),.t(t14));
multi105(.b(b),.t(t15));
multi112(.b(b),.t(t16));




assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column8_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;


multi8(.b(b),.t(t1));
multi16(.b(b),.t(t2));
multi24(.b(b),.t(t3));
multi32(.b(b),.t(t4));
multi40(.b(b),.t(t5));
multi48(.b(b),.t(t6));
multi56(.b(b),.t(t7));
multi64(.b(b),.t(t8));
multi72(.b(b),.t(t9));
multi80(.b(b),.t(t10));
multi88(.b(b),.t(t11));
multi96(.b(b),.t(t12));
multi104(.b(b),.t(t13));
multi112(.b(b),.t(t14));
multi120(.b(b),.t(t15));
multi128(.b(b),.t(t16));




assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column9_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;


multi9(.b(b),.t(t1));
multi18(.b(b),.t(t2));
multi27(.b(b),.t(t3));
multi36(.b(b),.t(t4));
multi45(.b(b),.t(t5));
multi54(.b(b),.t(t6));
multi63(.b(b),.t(t7));
multi72(.b(b),.t(t8));
multi81(.b(b),.t(t9));
multi90(.b(b),.t(t10));
multi99(.b(b),.t(t11));
multi108(.b(b),.t(t12));
multi117(.b(b),.t(t13));
multi126(.b(b),.t(t14));
multi135(.b(b),.t(t15));
multi144(.b(b),.t(t16));



assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column10_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;


multi10(.b(b),.t(t1));
multi20(.b(b),.t(t2));
multi30(.b(b),.t(t3));
multi40(.b(b),.t(t4));
multi50(.b(b),.t(t5));
multi60(.b(b),.t(t6));
multi70(.b(b),.t(t7));
multi80(.b(b),.t(t8));
multi90(.b(b),.t(t9));
multi100(.b(b),.t(t10));
multi110(.b(b),.t(t11));
multi120(.b(b),.t(t12));
multi130(.b(b),.t(t13));
multi140(.b(b),.t(t14));
multi150(.b(b),.t(t15));
multi160(.b(b),.t(t16));





assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column11_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;


multi11(.b(b),.t(t1));
multi22(.b(b),.t(t2));
multi33(.b(b),.t(t3));
multi44(.b(b),.t(t4));
multi55(.b(b),.t(t5));
multi66(.b(b),.t(t6));
multi77(.b(b),.t(t7));
multi88(.b(b),.t(t8));
multi99(.b(b),.t(t9));
multi110(.b(b),.t(t10));
multi121(.b(b),.t(t11));
multi132(.b(b),.t(t12));
multi143(.b(b),.t(t13));
multi154(.b(b),.t(t14));
multi165(.b(b),.t(t15));
multi176(.b(b),.t(t16));



assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column12_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;




multi12(.b(b),.t(t1));
multi24(.b(b),.t(t2));
multi36(.b(b),.t(t3));
multi48(.b(b),.t(t4));
multi60(.b(b),.t(t5));
multi72(.b(b),.t(t6));
multi84(.b(b),.t(t7));
multi96(.b(b),.t(t8));
multi108(.b(b),.t(t9));
multi120(.b(b),.t(t10));
multi132(.b(b),.t(t11));
multi144(.b(b),.t(t12));
multi156(.b(b),.t(t13));
multi168(.b(b),.t(t14));
multi180(.b(b),.t(t15));
multi192(.b(b),.t(t16));



assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column13_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;


multi13(.b(b),.t(t1));
multi26(.b(b),.t(t2));
multi39(.b(b),.t(t3));
multi52(.b(b),.t(t4));
multi65(.b(b),.t(t5));
multi78(.b(b),.t(t6));
multi91(.b(b),.t(t7));
multi104(.b(b),.t(t8));
multi117(.b(b),.t(t9));
multi130(.b(b),.t(t10));
multi143(.b(b),.t(t11));
multi156(.b(b),.t(t12));
multi169(.b(b),.t(t13));
multi182(.b(b),.t(t14));
multi195(.b(b),.t(t15));
multi208(.b(b),.t(t16));




assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column14_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;



multi14(.b(b),.t(t1));
multi28(.b(b),.t(t2));
multi42(.b(b),.t(t3));
multi56(.b(b),.t(t4));
multi70(.b(b),.t(t5));
multi84(.b(b),.t(t6));
multi98(.b(b),.t(t7));
multi112(.b(b),.t(t8));
multi126(.b(b),.t(t9));
multi140(.b(b),.t(t10));
multi154(.b(b),.t(t11));
multi168(.b(b),.t(t12));
multi182(.b(b),.t(t13));
multi196(.b(b),.t(t14));
multi210(.b(b),.t(t15));
multi224(.b(b),.t(t16));



assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column15_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;


multi15(.b(b),.t(t1));
multi30(.b(b),.t(t2));
multi45(.b(b),.t(t3));
multi60(.b(b),.t(t4));
multi75(.b(b),.t(t5));
multi90(.b(b),.t(t6));
multi105(.b(b),.t(t7));
multi120(.b(b),.t(t8));
multi135(.b(b),.t(t9));
multi150(.b(b),.t(t10));
multi165(.b(b),.t(t11));
multi180(.b(b),.t(t12));
multi195(.b(b),.t(t13));
multi210(.b(b),.t(t14));
multi225(.b(b),.t(t15));
multi240(.b(b),.t(t16));




assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

module multiplier_column0_p16(b,P1,P2,P3,P4,P5,P6,P7,P8,
                                P9,P10,P11,P12,P13,P14,P15,P16);

input [7:0]b;
output [7:0]P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16; 


wire [7:0]t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16;


multi0(.b(b),.t(t1));
multi0(.b(b),.t(t2));
multi0(.b(b),.t(t3));
multi0(.b(b),.t(t4));
multi0(.b(b),.t(t5));
multi0(.b(b),.t(t6));
multi0(.b(b),.t(t7));
multi0(.b(b),.t(t8));
multi0(.b(b),.t(t9));
multi0(.b(b),.t(t10));
multi0(.b(b),.t(t11));
multi0(.b(b),.t(t12));
multi0(.b(b),.t(t13));
multi0(.b(b),.t(t14));
multi0(.b(b),.t(t15));
multi0(.b(b),.t(t16));


assign P1=t1;
assign P2=t2;
assign P3=t3;
assign P4=t4;
assign P5=t5;
assign P6=t6;
assign P7=t7;
assign P8=t8;
assign P9=t9;
assign P10=t10;
assign P11=t11;
assign P12=t12;
assign P13=t13;
assign P14=t14;
assign P15=t15;
assign P16=t16;

endmodule



//-------------------------------------------------------------------------------------------------------

