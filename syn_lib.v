



module syndrome_row(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;

multi1 m1(.b(r1),.t(mul1));
multi2 m2(.b(r2),.t(mul2));
multi3 m3(.b(r3),.t(mul3));
multi4 m4(.b(r4),.t(mul4));
multi5 m5(.b(r5),.t(mul5));
multi6 m6(.b(r6),.t(mul6));
multi7 m7(.b(r7),.t(mul7));
multi8 m8(.b(r8),.t(mul8));
multi9 m9(.b(r9),.t(mul9));
multi10 m10(.b(r10),.t(mul10));
multi11 m11(.b(r11),.t(mul11));
multi12 m12(.b(r12),.t(mul12));
multi13 m13(.b(r13),.t(mul13));
multi14 m14(.b(r14),.t(mul14));
multi15 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi16 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end	
	
		   


endmodule

//-----------------------------------------------------------------
module syndrome_row_2(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi2 m1(.b(r1),.t(mul1));
multi4 m2(.b(r2),.t(mul2));
multi6 m3(.b(r3),.t(mul3));
multi8 m4(.b(r4),.t(mul4));
multi10 m5(.b(r5),.t(mul5));
multi12 m6(.b(r6),.t(mul6));
multi14 m7(.b(r7),.t(mul7));
multi16 m8(.b(r8),.t(mul8));
multi18 m9(.b(r9),.t(mul9));
multi20 m10(.b(r10),.t(mul10));
multi22 m11(.b(r11),.t(mul11));
multi24 m12(.b(r12),.t(mul12));
multi26 m13(.b(r13),.t(mul13));
multi28 m14(.b(r14),.t(mul14));
multi30 m15(.b(r15),.t(mul15));




assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi32 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_3(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi3 m1(.b(r1),.t(mul1));
multi6 m2(.b(r2),.t(mul2));
multi9 m3(.b(r3),.t(mul3));
multi12 m4(.b(r4),.t(mul4));
multi15 m5(.b(r5),.t(mul5));
multi18 m6(.b(r6),.t(mul6));
multi21 m7(.b(r7),.t(mul7));
multi24 m8(.b(r8),.t(mul8));
multi27 m9(.b(r9),.t(mul9));
multi30 m10(.b(r10),.t(mul10));
multi33 m11(.b(r11),.t(mul11));
multi36 m12(.b(r12),.t(mul12));
multi39 m13(.b(r13),.t(mul13));
multi42 m14(.b(r14),.t(mul14));
multi45 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi48 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_4(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi4 m1(.b(r1),.t(mul1));
multi8 m2(.b(r2),.t(mul2));
multi12 m3(.b(r3),.t(mul3));
multi16 m4(.b(r4),.t(mul4));
multi20 m5(.b(r5),.t(mul5));
multi24 m6(.b(r6),.t(mul6));
multi28 m7(.b(r7),.t(mul7));
multi32 m8(.b(r8),.t(mul8));
multi36 m9(.b(r9),.t(mul9));
multi40 m10(.b(r10),.t(mul10));
multi44 m11(.b(r11),.t(mul11));
multi48 m12(.b(r12),.t(mul12));
multi52 m13(.b(r13),.t(mul13));
multi56 m14(.b(r14),.t(mul14));
multi60 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi64 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_5(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi5 m1(.b(r1),.t(mul1));
multi10 m2(.b(r2),.t(mul2));
multi15 m3(.b(r3),.t(mul3));
multi20 m4(.b(r4),.t(mul4));
multi25 m5(.b(r5),.t(mul5));
multi30 m6(.b(r6),.t(mul6));
multi35 m7(.b(r7),.t(mul7));
multi40 m8(.b(r8),.t(mul8));
multi45 m9(.b(r9),.t(mul9));
multi50 m10(.b(r10),.t(mul10));
multi55 m11(.b(r11),.t(mul11));
multi60 m12(.b(r12),.t(mul12));
multi65 m13(.b(r13),.t(mul13));
multi70 m14(.b(r14),.t(mul14));
multi75 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi80 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_6(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi6 m1(.b(r1),.t(mul1));
multi12 m2(.b(r2),.t(mul2));
multi18 m3(.b(r3),.t(mul3));
multi24 m4(.b(r4),.t(mul4));
multi30 m5(.b(r5),.t(mul5));
multi36 m6(.b(r6),.t(mul6));
multi42 m7(.b(r7),.t(mul7));
multi48 m8(.b(r8),.t(mul8));
multi54 m9(.b(r9),.t(mul9));
multi60 m10(.b(r10),.t(mul10));
multi66 m11(.b(r11),.t(mul11));
multi72 m12(.b(r12),.t(mul12));
multi78 m13(.b(r13),.t(mul13));
multi84 m14(.b(r14),.t(mul14));
multi90 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;


assign  S=d;

multi96 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_7(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi7 m1(.b(r1),.t(mul1));
multi14 m2(.b(r2),.t(mul2));
multi21 m3(.b(r3),.t(mul3));
multi28 m4(.b(r4),.t(mul4));
multi35 m5(.b(r5),.t(mul5));
multi42 m6(.b(r6),.t(mul6));
multi49 m7(.b(r7),.t(mul7));
multi56 m8(.b(r8),.t(mul8));
multi63 m9(.b(r9),.t(mul9));
multi70 m10(.b(r10),.t(mul10));
multi77 m11(.b(r11),.t(mul11));
multi84 m12(.b(r12),.t(mul12));
multi91 m13(.b(r13),.t(mul13));
multi98 m14(.b(r14),.t(mul14));
multi105 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi112 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_8(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi8 m1(.b(r1),.t(mul1));
multi16 m2(.b(r2),.t(mul2));
multi24 m3(.b(r3),.t(mul3));
multi32 m4(.b(r4),.t(mul4));
multi40 m5(.b(r5),.t(mul5));
multi48 m6(.b(r6),.t(mul6));
multi56 m7(.b(r7),.t(mul7));
multi64 m8(.b(r8),.t(mul8));
multi72 m9(.b(r9),.t(mul9));
multi80 m10(.b(r10),.t(mul10));
multi88 m11(.b(r11),.t(mul11));
multi96 m12(.b(r12),.t(mul12));
multi104 m13(.b(r13),.t(mul13));
multi112 m14(.b(r14),.t(mul14));
multi120 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi128 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_9(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi9 m1(.b(r1),.t(mul1));
multi18 m2(.b(r2),.t(mul2));
multi27 m3(.b(r3),.t(mul3));
multi36 m4(.b(r4),.t(mul4));
multi45 m5(.b(r5),.t(mul5));
multi54 m6(.b(r6),.t(mul6));
multi63 m7(.b(r7),.t(mul7));
multi72 m8(.b(r8),.t(mul8));
multi81 m9(.b(r9),.t(mul9));
multi90 m10(.b(r10),.t(mul10));
multi99 m11(.b(r11),.t(mul11));
multi108 m12(.b(r12),.t(mul12));
multi117 m13(.b(r13),.t(mul13));
multi126 m14(.b(r14),.t(mul14));
multi135 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi144 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_10(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi10 m1(.b(r1),.t(mul1));
multi20 m2(.b(r2),.t(mul2));
multi30 m3(.b(r3),.t(mul3));
multi40 m4(.b(r4),.t(mul4));
multi50 m5(.b(r5),.t(mul5));
multi60 m6(.b(r6),.t(mul6));
multi70 m7(.b(r7),.t(mul7));
multi80 m8(.b(r8),.t(mul8));
multi90 m9(.b(r9),.t(mul9));
multi100 m10(.b(r10),.t(mul10));
multi110 m11(.b(r11),.t(mul11));
multi120 m12(.b(r12),.t(mul12));
multi130 m13(.b(r13),.t(mul13));
multi140 m14(.b(r14),.t(mul14));
multi150 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi160 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_11(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi11 m1(.b(r1),.t(mul1));
multi22 m2(.b(r2),.t(mul2));
multi33 m3(.b(r3),.t(mul3));
multi44 m4(.b(r4),.t(mul4));
multi55 m5(.b(r5),.t(mul5));
multi66 m6(.b(r6),.t(mul6));
multi77 m7(.b(r7),.t(mul7));
multi88 m8(.b(r8),.t(mul8));
multi99 m9(.b(r9),.t(mul9));
multi110 m10(.b(r10),.t(mul10));
multi121 m11(.b(r11),.t(mul11));
multi132 m12(.b(r12),.t(mul12));
multi143 m13(.b(r13),.t(mul13));
multi154 m14(.b(r14),.t(mul14));
multi165 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi176 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_12(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi12 m1(.b(r1),.t(mul1));
multi24 m2(.b(r2),.t(mul2));
multi36 m3(.b(r3),.t(mul3));
multi48 m4(.b(r4),.t(mul4));
multi60 m5(.b(r5),.t(mul5));
multi72 m6(.b(r6),.t(mul6));
multi84 m7(.b(r7),.t(mul7));
multi96 m8(.b(r8),.t(mul8));
multi108 m9(.b(r9),.t(mul9));
multi120 m10(.b(r10),.t(mul10));
multi132 m11(.b(r11),.t(mul11));
multi144 m12(.b(r12),.t(mul12));
multi156 m13(.b(r13),.t(mul13));
multi168 m14(.b(r14),.t(mul14));
multi180 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi192 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_13(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi13 m1(.b(r1),.t(mul1));
multi26 m2(.b(r2),.t(mul2));
multi39 m3(.b(r3),.t(mul3));
multi52 m4(.b(r4),.t(mul4));
multi65 m5(.b(r5),.t(mul5));
multi78 m6(.b(r6),.t(mul6));
multi91 m7(.b(r7),.t(mul7));
multi104 m8(.b(r8),.t(mul8));
multi117 m9(.b(r9),.t(mul9));
multi130 m10(.b(r10),.t(mul10));
multi143 m11(.b(r11),.t(mul11));
multi156 m12(.b(r12),.t(mul12));
multi169 m13(.b(r13),.t(mul13));
multi182 m14(.b(r14),.t(mul14));
multi195 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi208 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_14(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi14 m1(.b(r1),.t(mul1));
multi28 m2(.b(r2),.t(mul2));
multi42 m3(.b(r3),.t(mul3));
multi56 m4(.b(r4),.t(mul4));
multi70 m5(.b(r5),.t(mul5));
multi84 m6(.b(r6),.t(mul6));
multi98 m7(.b(r7),.t(mul7));
multi112 m8(.b(r8),.t(mul8));
multi126 m9(.b(r9),.t(mul9));
multi140 m10(.b(r10),.t(mul10));
multi154 m11(.b(r11),.t(mul11));
multi168 m12(.b(r12),.t(mul12));
multi182 m13(.b(r13),.t(mul13));
multi196 m14(.b(r14),.t(mul14));
multi210 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi224 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_15(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi15 m1(.b(r1),.t(mul1));
multi30 m2(.b(r2),.t(mul2));
multi45 m3(.b(r3),.t(mul3));
multi60 m4(.b(r4),.t(mul4));
multi75 m5(.b(r5),.t(mul5));
multi90 m6(.b(r6),.t(mul6));
multi105 m7(.b(r7),.t(mul7));
multi120 m8(.b(r8),.t(mul8));
multi135 m9(.b(r9),.t(mul9));
multi150 m10(.b(r10),.t(mul10));
multi165 m11(.b(r11),.t(mul11));
multi180 m12(.b(r12),.t(mul12));
multi195 m13(.b(r13),.t(mul13));
multi210 m14(.b(r14),.t(mul14));
multi225 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi240 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

module syndrome_row_16(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi16 m1(.b(r1),.t(mul1));
multi32 m2(.b(r2),.t(mul2));
multi48 m3(.b(r3),.t(mul3));
multi64 m4(.b(r4),.t(mul4));
multi80 m5(.b(r5),.t(mul5));
multi96 m6(.b(r6),.t(mul6));
multi112 m7(.b(r7),.t(mul7));
multi128 m8(.b(r8),.t(mul8));
multi144 m9(.b(r9),.t(mul9));
multi160 m10(.b(r10),.t(mul10));
multi176 m11(.b(r11),.t(mul11));
multi192 m12(.b(r12),.t(mul12));
multi208 m13(.b(r13),.t(mul13));
multi224 m14(.b(r14),.t(mul14));
multi240 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi1 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------

//-----------------------------------------------------------------
module syndrome_row_17(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi17 m1(.b(r1),.t(mul1));
multi34 m2(.b(r2),.t(mul2));
multi51 m3(.b(r3),.t(mul3));
multi68 m4(.b(r4),.t(mul4));
multi85 m5(.b(r5),.t(mul5));
multi102 m6(.b(r6),.t(mul6));
multi119 m7(.b(r7),.t(mul7));
multi136 m8(.b(r8),.t(mul8));
multi153 m9(.b(r9),.t(mul9));
multi170 m10(.b(r10),.t(mul10));
multi187 m11(.b(r11),.t(mul11));
multi204 m12(.b(r12),.t(mul12));
multi221 m13(.b(r13),.t(mul13));
multi238 m14(.b(r14),.t(mul14));
multi0 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi17 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_18(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi18 m1(.b(r1),.t(mul1));
multi36 m2(.b(r2),.t(mul2));
multi54 m3(.b(r3),.t(mul3));
multi72 m4(.b(r4),.t(mul4));
multi90 m5(.b(r5),.t(mul5));
multi108 m6(.b(r6),.t(mul6));
multi126 m7(.b(r7),.t(mul7));
multi144 m8(.b(r8),.t(mul8));
multi162 m9(.b(r9),.t(mul9));
multi180 m10(.b(r10),.t(mul10));
multi198 m11(.b(r11),.t(mul11));
multi216 m12(.b(r12),.t(mul12));
multi234 m13(.b(r13),.t(mul13));
multi252 m14(.b(r14),.t(mul14));
multi15 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi33 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_19(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi19 m1(.b(r1),.t(mul1));
multi38 m2(.b(r2),.t(mul2));
multi57 m3(.b(r3),.t(mul3));
multi76 m4(.b(r4),.t(mul4));
multi95 m5(.b(r5),.t(mul5));
multi114 m6(.b(r6),.t(mul6));
multi133 m7(.b(r7),.t(mul7));
multi152 m8(.b(r8),.t(mul8));
multi171 m9(.b(r9),.t(mul9));
multi190 m10(.b(r10),.t(mul10));
multi209 m11(.b(r11),.t(mul11));
multi228 m12(.b(r12),.t(mul12));
multi247 m13(.b(r13),.t(mul13));
multi11 m14(.b(r14),.t(mul14));
multi30 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi49 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_20(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi20 m1(.b(r1),.t(mul1));
multi40 m2(.b(r2),.t(mul2));
multi60 m3(.b(r3),.t(mul3));
multi80 m4(.b(r4),.t(mul4));
multi100 m5(.b(r5),.t(mul5));
multi120 m6(.b(r6),.t(mul6));
multi140 m7(.b(r7),.t(mul7));
multi160 m8(.b(r8),.t(mul8));
multi180 m9(.b(r9),.t(mul9));
multi200 m10(.b(r10),.t(mul10));
multi220 m11(.b(r11),.t(mul11));
multi240 m12(.b(r12),.t(mul12));
multi5 m13(.b(r13),.t(mul13));
multi25 m14(.b(r14),.t(mul14));
multi45 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi65 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_21(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi21 m1(.b(r1),.t(mul1));
multi42 m2(.b(r2),.t(mul2));
multi63 m3(.b(r3),.t(mul3));
multi84 m4(.b(r4),.t(mul4));
multi105 m5(.b(r5),.t(mul5));
multi126 m6(.b(r6),.t(mul6));
multi147 m7(.b(r7),.t(mul7));
multi168 m8(.b(r8),.t(mul8));
multi189 m9(.b(r9),.t(mul9));
multi210 m10(.b(r10),.t(mul10));
multi231 m11(.b(r11),.t(mul11));
multi252 m12(.b(r12),.t(mul12));
multi18 m13(.b(r13),.t(mul13));
multi39 m14(.b(r14),.t(mul14));
multi60 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi81 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_22(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi22 m1(.b(r1),.t(mul1));
multi44 m2(.b(r2),.t(mul2));
multi66 m3(.b(r3),.t(mul3));
multi88 m4(.b(r4),.t(mul4));
multi110 m5(.b(r5),.t(mul5));
multi132 m6(.b(r6),.t(mul6));
multi154 m7(.b(r7),.t(mul7));
multi176 m8(.b(r8),.t(mul8));
multi198 m9(.b(r9),.t(mul9));
multi220 m10(.b(r10),.t(mul10));
multi242 m11(.b(r11),.t(mul11));
multi9 m12(.b(r12),.t(mul12));
multi31 m13(.b(r13),.t(mul13));
multi53 m14(.b(r14),.t(mul14));
multi75 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi97 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_23(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi23 m1(.b(r1),.t(mul1));
multi46 m2(.b(r2),.t(mul2));
multi69 m3(.b(r3),.t(mul3));
multi92 m4(.b(r4),.t(mul4));
multi115 m5(.b(r5),.t(mul5));
multi138 m6(.b(r6),.t(mul6));
multi161 m7(.b(r7),.t(mul7));
multi184 m8(.b(r8),.t(mul8));
multi207 m9(.b(r9),.t(mul9));
multi230 m10(.b(r10),.t(mul10));
multi253 m11(.b(r11),.t(mul11));
multi21 m12(.b(r12),.t(mul12));
multi44 m13(.b(r13),.t(mul13));
multi67 m14(.b(r14),.t(mul14));
multi90 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi113 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_24(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi24 m1(.b(r1),.t(mul1));
multi48 m2(.b(r2),.t(mul2));
multi72 m3(.b(r3),.t(mul3));
multi96 m4(.b(r4),.t(mul4));
multi120 m5(.b(r5),.t(mul5));
multi144 m6(.b(r6),.t(mul6));
multi168 m7(.b(r7),.t(mul7));
multi192 m8(.b(r8),.t(mul8));
multi216 m9(.b(r9),.t(mul9));
multi240 m10(.b(r10),.t(mul10));
multi9 m11(.b(r11),.t(mul11));
multi33 m12(.b(r12),.t(mul12));
multi57 m13(.b(r13),.t(mul13));
multi81 m14(.b(r14),.t(mul14));
multi105 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi129 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_25(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi25 m1(.b(r1),.t(mul1));
multi50 m2(.b(r2),.t(mul2));
multi75 m3(.b(r3),.t(mul3));
multi100 m4(.b(r4),.t(mul4));
multi125 m5(.b(r5),.t(mul5));
multi150 m6(.b(r6),.t(mul6));
multi175 m7(.b(r7),.t(mul7));
multi200 m8(.b(r8),.t(mul8));
multi225 m9(.b(r9),.t(mul9));
multi250 m10(.b(r10),.t(mul10));
multi20 m11(.b(r11),.t(mul11));
multi45 m12(.b(r12),.t(mul12));
multi70 m13(.b(r13),.t(mul13));
multi95 m14(.b(r14),.t(mul14));
multi120 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi145 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_26(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi26 m1(.b(r1),.t(mul1));
multi52 m2(.b(r2),.t(mul2));
multi78 m3(.b(r3),.t(mul3));
multi104 m4(.b(r4),.t(mul4));
multi130 m5(.b(r5),.t(mul5));
multi156 m6(.b(r6),.t(mul6));
multi182 m7(.b(r7),.t(mul7));
multi208 m8(.b(r8),.t(mul8));
multi234 m9(.b(r9),.t(mul9));
multi5 m10(.b(r10),.t(mul10));
multi31 m11(.b(r11),.t(mul11));
multi57 m12(.b(r12),.t(mul12));
multi83 m13(.b(r13),.t(mul13));
multi109 m14(.b(r14),.t(mul14));
multi135 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi161 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_27(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi27 m1(.b(r1),.t(mul1));
multi54 m2(.b(r2),.t(mul2));
multi81 m3(.b(r3),.t(mul3));
multi108 m4(.b(r4),.t(mul4));
multi135 m5(.b(r5),.t(mul5));
multi162 m6(.b(r6),.t(mul6));
multi189 m7(.b(r7),.t(mul7));
multi216 m8(.b(r8),.t(mul8));
multi243 m9(.b(r9),.t(mul9));
multi15 m10(.b(r10),.t(mul10));
multi42 m11(.b(r11),.t(mul11));
multi69 m12(.b(r12),.t(mul12));
multi96 m13(.b(r13),.t(mul13));
multi123 m14(.b(r14),.t(mul14));
multi150 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi177 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_28(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi28 m1(.b(r1),.t(mul1));
multi56 m2(.b(r2),.t(mul2));
multi84 m3(.b(r3),.t(mul3));
multi112 m4(.b(r4),.t(mul4));
multi140 m5(.b(r5),.t(mul5));
multi168 m6(.b(r6),.t(mul6));
multi196 m7(.b(r7),.t(mul7));
multi224 m8(.b(r8),.t(mul8));
multi252 m9(.b(r9),.t(mul9));
multi25 m10(.b(r10),.t(mul10));
multi53 m11(.b(r11),.t(mul11));
multi81 m12(.b(r12),.t(mul12));
multi109 m13(.b(r13),.t(mul13));
multi137 m14(.b(r14),.t(mul14));
multi165 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi193 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_29(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi29 m1(.b(r1),.t(mul1));
multi58 m2(.b(r2),.t(mul2));
multi87 m3(.b(r3),.t(mul3));
multi116 m4(.b(r4),.t(mul4));
multi145 m5(.b(r5),.t(mul5));
multi174 m6(.b(r6),.t(mul6));
multi203 m7(.b(r7),.t(mul7));
multi232 m8(.b(r8),.t(mul8));
multi6 m9(.b(r9),.t(mul9));
multi35 m10(.b(r10),.t(mul10));
multi64 m11(.b(r11),.t(mul11));
multi93 m12(.b(r12),.t(mul12));
multi122 m13(.b(r13),.t(mul13));
multi151 m14(.b(r14),.t(mul14));
multi180 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi209 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_30(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi30 m1(.b(r1),.t(mul1));
multi60 m2(.b(r2),.t(mul2));
multi90 m3(.b(r3),.t(mul3));
multi120 m4(.b(r4),.t(mul4));
multi150 m5(.b(r5),.t(mul5));
multi180 m6(.b(r6),.t(mul6));
multi210 m7(.b(r7),.t(mul7));
multi240 m8(.b(r8),.t(mul8));
multi15 m9(.b(r9),.t(mul9));
multi45 m10(.b(r10),.t(mul10));
multi75 m11(.b(r11),.t(mul11));
multi105 m12(.b(r12),.t(mul12));
multi135 m13(.b(r13),.t(mul13));
multi165 m14(.b(r14),.t(mul14));
multi195 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi225 m16(.b(sum),.t(feedback_w));

always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_31(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi31 m1(.b(r1),.t(mul1));
multi62 m2(.b(r2),.t(mul2));
multi93 m3(.b(r3),.t(mul3));
multi124 m4(.b(r4),.t(mul4));
multi155 m5(.b(r5),.t(mul5));
multi186 m6(.b(r6),.t(mul6));
multi217 m7(.b(r7),.t(mul7));
multi248 m8(.b(r8),.t(mul8));
multi24 m9(.b(r9),.t(mul9));
multi55 m10(.b(r10),.t(mul10));
multi86 m11(.b(r11),.t(mul11));
multi117 m12(.b(r12),.t(mul12));
multi148 m13(.b(r13),.t(mul13));
multi179 m14(.b(r14),.t(mul14));
multi210 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi241 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
module syndrome_row_32(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
                    r11,r12,r13,r14,r15,
                    S,
				clk,
				start,
				reset);				
	
input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
     	 r11,r12,r13,r14,r15;
input	 clk,
		 start,
	 	reset;
output [7:0]S;

wire [7:0]S;
wire [7:0]out;
wire [7:0]sum;
wire [7:0]mul1,mul2,mul3,mul4,mul5,mul6,mul7,mul8,mul9,mul10,mul11,mul12,mul13,mul14,mul15;
reg [7:0]feedback;
reg [7:0]d;
wire [7:0]feedback_w;


multi32 m1(.b(r1),.t(mul1));
multi64 m2(.b(r2),.t(mul2));
multi96 m3(.b(r3),.t(mul3));
multi128 m4(.b(r4),.t(mul4));
multi160 m5(.b(r5),.t(mul5));
multi192 m6(.b(r6),.t(mul6));
multi224 m7(.b(r7),.t(mul7));
multi1 m8(.b(r8),.t(mul8));
multi33 m9(.b(r9),.t(mul9));
multi65 m10(.b(r10),.t(mul10));
multi97 m11(.b(r11),.t(mul11));
multi129 m12(.b(r12),.t(mul12));
multi161 m13(.b(r13),.t(mul13));
multi193 m14(.b(r14),.t(mul14));
multi225 m15(.b(r15),.t(mul15));



assign sum=r0^mul1^mul2^mul3^mul4^mul5^mul6^mul7^mul8^mul9^mul10^mul11^mul12^mul13^mul14^mul15^feedback;

assign  S=d;

multi2 m16(.b(sum),.t(feedback_w));
always@(posedge clk or negedge reset)
begin
           
		  if(!reset)
		 begin
		 d<= #1 8'b0;
		 feedback<=#1 8'b0;
		 end
		 else if(start)
		 begin
		 d<= #1 sum;
		 feedback<=#1 feedback_w;
		 end
		 
		 

end

	   


endmodule

//-----------------------------------------------------------------
