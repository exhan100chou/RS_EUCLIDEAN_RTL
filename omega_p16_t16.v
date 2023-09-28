module omega_p16_t16(omega0,omega1,omega2,omega3,omega4,
                           omega5,omega6,omega7,omega8,omega9,
							omega10,omega11,omega12,omega13,omega14,omega15,//inputs
					 		 enable,
   							    sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,
							  sum9,sum10,sum11,sum12,sum13,sum14,sum15,sum16,//outputs
							  sel,clk,reset);//~~~~~~~~~~~~~~~~~~~~~~
	
input[7:0] omega0,omega1,omega2,omega3,omega4,omega5,omega6,omega7,omega8,omega9,
			omega10,omega11,omega12,omega13,omega14,omega15;			
input sel,clk,reset;
input enable;

output [7:0]sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,
             sum9,sum10,sum11,sum12,sum13,sum14,sum15,sum16;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~`

			
wire [7:0]col1,col2,col3,col4,col5,col6,col7,col8,col9,col10,col11,col12,col13,col14,col15,col16/*synthesis keep*/;
wire [7:0]L1_1,L1_2,L1_3,L1_4,L1_5,L1_6,L1_7,L1_8,
L2_1,L2_2,L2_3,L2_4,L2_5,L2_6,L2_7,L2_8,
L3_1,L3_2,L3_3,L3_4,L3_5,L3_6,L3_7,L3_8,
L4_1,L4_2,L4_3,L4_4,L4_5,L4_6,L4_7,L4_8,
L5_1,L5_2,L5_3,L5_4,L5_5,L5_6,L5_7,L5_8,
L6_1,L6_2,L6_3,L6_4,L6_5,L6_6,L6_7,L6_8,
L7_1,L7_2,L7_3,L7_4,L7_5,L7_6,L7_7,L7_8,
L8_1,L8_2,L8_3,L8_4,L8_5,L8_6,L8_7,L8_8,
L9_1,L9_2,L9_3,L9_4,L9_5,L9_6,L9_7,L9_8,
L10_1,L10_2,L10_3,L10_4,L10_5,L10_6,L10_7,L10_8,
L11_1,L11_2,L11_3,L11_4,L11_5,L11_6,L11_7,L11_8,
L12_1,L12_2,L12_3,L12_4,L12_5,L12_6,L12_7,L12_8,
L13_1,L13_2,L13_3,L13_4,L13_5,L13_6,L13_7,L13_8,
L14_1,L14_2,L14_3,L14_4,L14_5,L14_6,L14_7,L14_8,
L15_1,L15_2,L15_3,L15_4,L15_5,L15_6,L15_7,L15_8,
L16_1,L16_2,L16_3,L16_4,L16_5,L16_6,L16_7,L16_8,
L1_9,L1_10,L1_11,L1_12,L1_13,L1_14,L1_15,L1_16,
L2_9,L2_10,L2_11,L2_12,L2_13,L2_14,L2_15,L2_16,
L3_9,L3_10,L3_11,L3_12,L3_13,L3_14,L3_15,L3_16,
L4_9,L4_10,L4_11,L4_12,L4_13,L4_14,L4_15,L4_16,
L5_9,L5_10,L5_11,L5_12,L5_13,L5_14,L5_15,L5_16,
L6_9,L6_10,L6_11,L6_12,L6_13,L6_14,L6_15,L6_16,
L7_9,L7_10,L7_11,L7_12,L7_13,L7_14,L7_15,L7_16,
L8_9,L8_10,L8_11,L8_12,L8_13,L8_14,L8_15,L8_16,
L9_9,L9_10,L9_11,L9_12,L9_13,L9_14,L9_15,L9_16,
L10_9,L10_10,L10_11,L10_12,L10_13,L10_14,L10_15,L10_16,
L11_9,L11_10,L11_11,L11_12,L11_13,L11_14,L11_15,L11_16,
L12_9,L12_10,L12_11,L12_12,L12_13,L12_14,L12_15,L12_16,
L13_9,L13_10,L13_11,L13_12,L13_13,L13_14,L13_15,L13_16,
L14_9,L14_10,L14_11,L14_12,L14_13,L14_14,L14_15,L14_16,
L15_9,L15_10,L15_11,L15_12,L15_13,L15_14,L15_15,L15_16,
L16_9,L16_10,L16_11,L16_12,L16_13,L16_14,L16_15,L16_16/*synthesis keep*/;


reg [7:0]temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11,temp12,temp13,temp14,temp15,temp16/*synthesis keep*/;
reg [7:0]s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16/*synthesis keep*/;
reg [7:0]cc1,cc2,cc3,cc4,cc5,cc6,cc7,cc8,cc9,cc10,cc11,cc12,cc13,cc14,cc15,cc16/*synthesis keep*/;
wire [7:0]ss1,ss2,ss3,ss4,ss5,ss6,ss7,ss8,ss9,ss10,ss11,ss12,ss13,ss14,ss15,ss16/*synthesis keep*/;



   mux_8 mmm0(.a(omega0),.b(temp1),.sel(sel),.out(col1));
   mux_8 mmm1(.a(omega1),.b(temp2),.sel(sel),.out(col2));
   mux_8 mmm2(.a(omega2),.b(temp3),.sel(sel),.out(col3));
   mux_8 mmm3(.a(omega3),.b(temp4),.sel(sel),.out(col4));
   mux_8 mmm4(.a(omega4),.b(temp5),.sel(sel),.out(col5));
   mux_8 mmm5(.a(omega5),.b(temp6),.sel(sel),.out(col6));
   mux_8 mmm6(.a(omega6),.b(temp7),.sel(sel),.out(col7));
   mux_8 mmm7(.a(omega7),.b(temp8),.sel(sel),.out(col8));
   mux_8 mmm8(.a(omega8),.b(temp9),.sel(sel),.out(col9));
   mux_8 mmm9(.a(omega9),.b(temp10),.sel(sel),.out(col10));
   mux_8 mmm10(.a(omega10),.b(temp11),.sel(sel),.out(col11));
   mux_8 mmm11(.a(omega11),.b(temp12),.sel(sel),.out(col12));
   mux_8 mmm12(.a(omega12),.b(temp13),.sel(sel),.out(col13));
   mux_8 mmm13(.a(omega13),.b(temp14),.sel(sel),.out(col14));
   mux_8 mmm14(.a(omega14),.b(temp15),.sel(sel),.out(col15));
   mux_8 mmm15(.a(omega15),.b(temp16),.sel(sel),.out(col16));                  

assign sum1 = s1;
assign sum2 = s2;      
assign sum3 = s3;       
assign sum4 = s4;       
assign sum5 = s5;       
assign sum6 = s6;       
assign sum7 = s7;      
assign sum8 = s8;       
assign sum9 = s9;       
assign sum10 = s10;       
assign sum11 = s11;      
assign sum12 = s12;       
assign sum13 = s13;        
assign sum14 = s14;         
assign sum15 = s15;       
assign sum16 = s16;                    
             
             
             
assign ss1 =  L1_1^L1_2^L1_3^L1_4^L1_5^L1_6^L1_7^L1_8^L1_9^L1_10^L1_11^L1_12^L1_13^L1_14^L1_15^L1_16;                 
assign ss2 =  L2_1^L2_2^L2_3^L2_4^L2_5^L2_6^L2_7^L2_8^L2_9^L2_10^L2_11^L2_12^L2_13^L2_14^L2_15^L2_16;                 
assign ss3 =  L3_1^L3_2^L3_3^L3_4^L3_5^L3_6^L3_7^L3_8^L3_9^L3_10^L3_11^L3_12^L3_13^L3_14^L3_15^L3_16;                 
assign ss4 =  L4_1^L4_2^L4_3^L4_4^L4_5^L4_6^L4_7^L4_8^L4_9^L4_10^L4_11^L4_12^L4_13^L4_14^L4_15^L4_16;                 
assign ss5 =  L5_1^L5_2^L5_3^L5_4^L5_5^L5_6^L5_7^L5_8^L5_9^L5_10^L5_11^L5_12^L5_13^L5_14^L5_15^L5_16;                 
assign ss6 =  L6_1^L6_2^L6_3^L6_4^L6_5^L6_6^L6_7^L6_8^L6_9^L6_10^L6_11^L6_12^L6_13^L6_14^L6_15^L6_16;                 
assign ss7 =  L7_1^L7_2^L7_3^L7_4^L7_5^L7_6^L7_7^L7_8^L7_9^L7_10^L7_11^L7_12^L7_13^L7_14^L7_15^L7_16;                 
assign ss8 =  L8_1^L8_2^L8_3^L8_4^L8_5^L8_6^L8_7^L8_8^L8_9^L8_10^L8_11^L8_12^L8_13^L8_14^L8_15^L8_16;                 
assign ss9 =  L9_1^L9_2^L9_3^L9_4^L9_5^L9_6^L9_7^L9_8^L9_9^L9_10^L9_11^L9_12^L9_13^L9_14^L9_15^L9_16;                 
assign ss10 = L10_1^L10_2^L10_3^L10_4^L10_5^L10_6^L10_7^L10_8^L10_9^L10_10^L10_11^L10_12^L10_13^L10_14^L10_15^L10_16; 
assign ss11 = L11_1^L11_2^L11_3^L11_4^L11_5^L11_6^L11_7^L11_8^L11_9^L11_10^L11_11^L11_12^L11_13^L11_14^L11_15^L11_16; 
assign ss12 = L12_1^L12_2^L12_3^L12_4^L12_5^L12_6^L12_7^L12_8^L12_9^L12_10^L12_11^L12_12^L12_13^L12_14^L12_15^L12_16; 
assign ss13 = L13_1^L13_2^L13_3^L13_4^L13_5^L13_6^L13_7^L13_8^L13_9^L13_10^L13_11^L13_12^L13_13^L13_14^L13_15^L13_16; 
assign ss14 = L14_1^L14_2^L14_3^L14_4^L14_5^L14_6^L14_7^L14_8^L14_9^L14_10^L14_11^L14_12^L14_13^L14_14^L14_15^L14_16; 
assign ss15 = L15_1^L15_2^L15_3^L15_4^L15_5^L15_6^L15_7^L15_8^L15_9^L15_10^L15_11^L15_12^L15_13^L15_14^L15_15^L15_16; 
assign ss16 = L16_1^L16_2^L16_3^L16_4^L16_5^L16_6^L16_7^L16_8^L16_9^L16_10^L16_11^L16_12^L16_13^L16_14^L16_15^L16_16; 


	
multiplier_column0_p16 c0(.b(col1),
		.P1(L1_1),.P2(L2_1),.P3(L3_1),.P4(L4_1),.P5(L5_1),
		.P6(L6_1),.P7(L7_1),.P8(L8_1),.P9(L9_1),.P10(L10_1),
		.P11(L11_1),.P12(L12_1),.P13(L13_1),.P14(L14_1),.P15(L15_1),
		.P16(L16_1));
		
		
multiplier_column1_p16 c1(.b(col2),
		.P1(L1_2),.P2(L2_2),.P3(L3_2),.P4(L4_2),.P5(L5_2),
		.P6(L6_2),.P7(L7_2),.P8(L8_2),.P9(L9_2),.P10(L10_2),
		.P11(L11_2),.P12(L12_2),.P13(L13_2),.P14(L14_2),.P15(L15_2),
		.P16(L16_2));
		
		
multiplier_column2_p16 c2(.b(col3),
		.P1(L1_3),.P2(L2_3),.P3(L3_3),.P4(L4_3),.P5(L5_3),
		.P6(L6_3),.P7(L7_3),.P8(L8_3),.P9(L9_3),.P10(L10_3),
		.P11(L11_3),.P12(L12_3),.P13(L13_3),.P14(L14_3),.P15(L15_3),
		.P16(L16_3));
		
multiplier_column3_p16 c3(.b(col4),
		.P1(L1_4),.P2(L2_4),.P3(L3_4),.P4(L4_4),.P5(L5_4),
		.P6(L6_4),.P7(L7_4),.P8(L8_4),.P9(L9_4),.P10(L10_4),
		.P11(L11_4),.P12(L12_4),.P13(L13_4),.P14(L14_4),.P15(L15_4),
		.P16(L16_4));
		
multiplier_column4_p16 c4(.b(col5),
		.P1(L1_5),.P2(L2_5),.P3(L3_5),.P4(L4_5),.P5(L5_5),
		.P6(L6_5),.P7(L7_5),.P8(L8_5),.P9(L9_5),.P10(L10_5),
		.P11(L11_5),.P12(L12_5),.P13(L13_5),.P14(L14_5),.P15(L15_5),
		.P16(L16_5));
		
multiplier_column5_p16 c5(.b(col6),
		.P1(L1_6),.P2(L2_6),.P3(L3_6),.P4(L4_6),.P5(L5_6),
		.P6(L6_6),.P7(L7_6),.P8(L8_6),.P9(L9_6),.P10(L10_6),
		.P11(L11_6),.P12(L12_6),.P13(L13_6),.P14(L14_6),.P15(L15_6),
		.P16(L16_6));
		
multiplier_column6_p16 c6(.b(col7),
		.P1(L1_7),.P2(L2_7),.P3(L3_7),.P4(L4_7),.P5(L5_7),
		.P6(L6_7),.P7(L7_7),.P8(L8_7),.P9(L9_7),.P10(L10_7),
		.P11(L11_7),.P12(L12_7),.P13(L13_7),.P14(L14_7),.P15(L15_7),
		.P16(L16_7));
		
multiplier_column7_p16 c7(.b(col8),
		.P1(L1_8),.P2(L2_8),.P3(L3_8),.P4(L4_8),.P5(L5_8),
		.P6(L6_8),.P7(L7_8),.P8(L8_8),.P9(L9_8),.P10(L10_8),
		.P11(L11_8),.P12(L12_8),.P13(L13_8),.P14(L14_8),.P15(L15_8),
		.P16(L16_8));
		
multiplier_column8_p16 c8(.b(col9),
		.P1(L1_9),.P2(L2_9),.P3(L3_9),.P4(L4_9),.P5(L5_9),
		.P6(L6_9),.P7(L7_9),.P8(L8_9),.P9(L9_9),.P10(L10_9),
		.P11(L11_9),.P12(L12_9),.P13(L13_9),.P14(L14_9),.P15(L15_9),
		.P16(L16_9));
		
multiplier_column9_p16 c9(.b(col10),
		.P1(L1_10),.P2(L2_10),.P3(L3_10),.P4(L4_10),.P5(L5_10),
		.P6(L6_10),.P7(L7_10),.P8(L8_10),.P9(L9_10),.P10(L10_10),
		.P11(L11_10),.P12(L12_10),.P13(L13_10),.P14(L14_10),.P15(L15_10),
		.P16(L16_10));

multiplier_column10_p16 c10(.b(col11),
		.P1(L1_11),.P2(L2_11),.P3(L3_11),.P4(L4_11),.P5(L5_11),
		.P6(L6_11),.P7(L7_11),.P8(L8_11),.P9(L9_11),.P10(L10_11),
		.P11(L11_11),.P12(L12_11),.P13(L13_11),.P14(L14_11),.P15(L15_11),
		.P16(L16_11));
		
multiplier_column11_p16 c11(.b(col12),
		.P1(L1_12),.P2(L2_12),.P3(L3_12),.P4(L4_12),.P5(L5_12),
		.P6(L6_12),.P7(L7_12),.P8(L8_12),.P9(L9_12),.P10(L10_12),
		.P11(L11_12),.P12(L12_12),.P13(L13_12),.P14(L14_12),.P15(L15_12),
		.P16(L16_12));
		
multiplier_column12_p16 c12(.b(col13),
		.P1(L1_13),.P2(L2_13),.P3(L3_13),.P4(L4_13),.P5(L5_13),
		.P6(L6_13),.P7(L7_13),.P8(L8_13),.P9(L9_13),.P10(L10_13),
		.P11(L11_13),.P12(L12_13),.P13(L13_13),.P14(L14_13),.P15(L15_13),
		.P16(L16_13));
		
multiplier_column13_p16 c13(.b(col14),
		.P1(L1_14),.P2(L2_14),.P3(L3_14),.P4(L4_14),.P5(L5_14),
		.P6(L6_14),.P7(L7_14),.P8(L8_14),.P9(L9_14),.P10(L10_14),
		.P11(L11_14),.P12(L12_14),.P13(L13_14),.P14(L14_14),.P15(L15_14),
		.P16(L16_14));
		
multiplier_column14_p16 c14(.b(col15),
		.P1(L1_15),.P2(L2_15),.P3(L3_15),.P4(L4_15),.P5(L5_15),
		.P6(L6_15),.P7(L7_15),.P8(L8_15),.P9(L9_15),.P10(L10_15),
		.P11(L11_15),.P12(L12_15),.P13(L13_15),.P14(L14_15),.P15(L15_15),
		.P16(L16_15));
		
multiplier_column15_p16 c15(.b(col16),
		.P1(L1_16),.P2(L2_16),.P3(L3_16),.P4(L4_16),.P5(L5_16),
		.P6(L6_16),.P7(L7_16),.P8(L8_16),.P9(L9_16),.P10(L10_16),
		.P11(L11_16),.P12(L12_16),.P13(L13_16),.P14(L14_16),.P15(L15_16),
		.P16(L16_16));


//--
             
always@(posedge clk or negedge reset)
begin
	

	if(!reset)
	begin

	  temp1<= #1 8'b0;
	  temp2<= #1 8'b0;
	  temp3<= #1 8'b0;
	  temp4<= #1 8'b0;
	  temp5<= #1 8'b0;
	  temp6<= #1 8'b0;
	  temp7<= #1 8'b0;
	  temp8<= #1 8'b0;
	  temp9<= #1 8'b0;
	  temp10<= #1 8'b0;	  
	  temp11<= #1 8'b0;
	  temp12<= #1 8'b0;
	  temp13<= #1 8'b0;
	  temp14<= #1 8'b0;
	  temp15<= #1 8'b0;
	  temp16<= #1 8'b0;
		

	
      s1<= #1 8'b0;
	  s2<= #1 8'b0;
	  s3<= #1 8'b0;
	  s4<= #1 8'b0;
	  s5<= #1 8'b0;
	  s6<= #1 8'b0;
	  s7<= #1 8'b0;
	  s8<= #1 8'b0;
	  s9<= #1 8'b0;
	  s10<= #1 8'b0;	  
	  s11<= #1 8'b0;
	  s12<= #1 8'b0;
	  s13<= #1 8'b0;
	  s14<= #1 8'b0;
	  s15<= #1 8'b0;
	  s16<= #1 8'b0;                     
	
	
	end
	else if( enable)
	begin 

 s1<= #1  ss1;
 s2<= #1  ss2;
 s3<= #1  ss3;
 s4<= #1  ss4;
 s5<= #1  ss5;
 s6<= #1  ss6;
 s7<= #1  ss7;
 s8<= #1  ss8;
 s9<= #1  ss9;
 s10<= #1 ss10;
 s11<= #1 ss11;
 s12<= #1 ss12;
 s13<= #1 ss13;
 s14<= #1 ss14;
 s15<= #1 ss15;
 s16<= #1 ss16;


temp1 <= #1 L16_1;
temp2 <= #1 L16_2;
temp3 <= #1 L16_3;
temp4 <= #1 L16_4;
temp5 <= #1 L16_5;
temp6 <= #1 L16_6;
temp7 <= #1 L16_7;
temp8 <= #1 L16_8;
temp9 <= #1 L16_9;
temp10 <= #1 L16_10;
temp11 <= #1 L16_11;
temp12 <= #1 L16_12;
temp13 <= #1 L16_13;
temp14 <= #1 L16_14;
temp15 <= #1 L16_15;
temp16 <= #1 L16_16;
 



//------
	end


end

endmodule