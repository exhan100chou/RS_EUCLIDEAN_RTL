module test_bench(RSin,
clk,rst,start,
er,
RSout

);

input [15:0]RSin;
input clk,
	 rst,
	
	 start;
	

output[7:0] RSout;
reg[7:0] RSout;

reg [127:0]syn_in;
reg[3:0] er;

output[3:0] er;
reg [7:0]q0  ,q41 ,q81 ,q121, q161,q201,q241,  
q1  ,q42 ,q82 ,q122, q162,q202,q242,  
q2  ,q43 ,q83 ,q123, q163,q203,q243,  
q3  ,q44 ,q84 ,q124, q164,q204,q244,  
q4  ,q45 ,q85 ,q125, q165,q205,q245,  
q5  ,q46 ,q86 ,q126, q166,q206,q246,  
q6  ,q47 ,q87 ,q127, q167,q207,q247,  
q7  ,q48 ,q88 ,q128, q168,q208,q248,  
q8  ,q49 ,q89 ,q129, q169,q209,q249,  
q9  ,q50 ,q90 ,q130, q170,q210,q250,  
q10 ,q51 ,q91 ,q131, q171,q211,q251,  
q11 ,q52 ,q92 ,q132, q172,q212,q252,  
q12 ,q53 ,q93 ,q133, q173,q213,q253,  
q13 ,q54 ,q94 ,q134, q174,q214,q254,  
q14 ,q55 ,q95 ,q135, q175,q215,q255, 
q15 ,q56 ,q96 ,q136, q176,q216, 
q16 ,q57 ,q97 ,q137, q177,q217, 
q17 ,q58 ,q98 ,q138, q178,q218, 
q18 ,q59 ,q99 ,q139, q179,q219, 
q19 ,q60 ,q100,q140, q180,q220, 
q20 ,q61 ,q101,q141, q181,q221, 
q21 ,q62 ,q102,q142, q182,q222, 
q22 ,q63 ,q103,q143, q183,q223, 
q23 ,q64 ,q104,q144, q184,q224, 
q24 ,q65 ,q105,q145, q185,q225, 
q25 ,q66 ,q106,q146, q186,q226, 
q26 ,q67 ,q107,q147, q187,q227, 
q27 ,q68 ,q108,q148, q188,q228, 
q28 ,q69 ,q109,q149, q189,q229, 
q29 ,q70 ,q110,q150, q190,q230, 
q30 ,q71 ,q111,q151, q191,q231, 
q31 ,q72 ,q112,q152, q192,q232, 
q32 ,q73 ,q113,q153, q193,q233, 
q33 ,q74 ,q114,q154, q194,q234, 
q34 ,q75 ,q115,q155, q195,q235, 
q35 ,q76 ,q116,q156, q196,q236, 
q36 ,q77 ,q117,q157, q197,q237, 
q37 ,q78 ,q118,q158, q198,q238, 
q38 ,q79 ,q119,q159, q199,q239, 
q39 ,q80 ,q120,q160, q200,q240, 
q40 ;

wire[7:0] add1,add2,add3,add4,add5,add6,add7,add8,add9,
         add10,add11,add12,add13,add14,add15,add16;

wire [7:0]st1 ,st2 ,st3 ,
st4 ,st5 ,st6 ,st7 ,st8 ,st9 ,
st10,st11,st12,st13,
st14,st15,st16,st17,
st18,st19,st20,st21,
st22,st23,st24,st25,st26,st27,st28,st29,st30,st31,st32;


reg [10:0]count/*synthesis keep*/;
//reg [3:0]er;

//reg wen/*syntheis keep*/;

reg wen0,wen1,wen2,wen3,wen4,wen5,wen6,wen7;
reg ren/*syntheis keep*/;
reg[4:0]addr;
//reg[2:0]ch;
reg syn_st;
reg euc_st;
//reg [15:0]temp;
reg [15:0]temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7;
wire [127:0]Dout/*synthesis keep*/;
wire [127:0]mu/*synthesis keep*/;

assign mu[127:8]=Dout[127:8];
assign mu[7:0]=8'b0;


/*RAM_32_16_8 m1(.clk(clk),.ren(ren),.wen(wen),.addr(addr),.Din(temp),.Dout(Dout),.ch(ch));*/
RAM_32_16 ram0(.clk(clk),.ren(ren),.wen(wen0),.addr(addr),.Din(temp0),.Dout(Dout[127:112]));   
RAM_32_16 ram1(.clk(clk),.ren(ren),.wen(wen1),.addr(addr),.Din(temp1),.Dout(Dout[111:96]));  
RAM_32_16 ram2(.clk(clk),.ren(ren),.wen(wen2),.addr(addr),.Din(temp2),.Dout(Dout[95:80]));  
RAM_32_16 ram3(.clk(clk),.ren(ren),.wen(wen3),.addr(addr),.Din(temp3),.Dout(Dout[79:64]));  
RAM_32_16 ram4(.clk(clk),.ren(ren),.wen(wen4),.addr(addr),.Din(temp4),.Dout(Dout[63:48]));  
RAM_32_16 ram5(.clk(clk),.ren(ren),.wen(wen5),.addr(addr),.Din(temp5),.Dout(Dout[47:32]));  
RAM_32_16 ram6(.clk(clk),.ren(ren),.wen(wen6),.addr(addr),.Din(temp6),.Dout(Dout[31:16])); 
RAM_32_16 ram7(.clk(clk),.ren(ren),.wen(wen7),.addr(addr),.Din(temp7),.Dout(Dout[15:0]));



syndrome s1(.r0(syn_in[127:120]),
.r1(syn_in[119:112]),
.r2(syn_in[111:104]),
.r3(syn_in[103:96]),
.r4(syn_in[95:88]),
.r5(syn_in[87:80]),
.r6(syn_in[79:72]),
.r7(syn_in[71:64]),
.r8(syn_in[63:56]),
.r9(syn_in[55:48]),
.r10(syn_in[47:40]),
.r11(syn_in[39:32]),
.r12(syn_in[31:24]),
.r13(syn_in[23:16]),
.r14(syn_in[15:8]),
.r15(syn_in[7:0]),
	 .clk(clk),
	 .reset(rst),
	 .start(syn_st),
	 .S1(st1),.S2(st2),.S3(st3),.S4(st4),.S5(st5),.S6(st6),.S7(st7),.S8(st8),.S9(st9),.S10(st10),
	 .S11(st11),.S12(st12),.S13(st13),.S14(st14),.S15(st15),.S16(st16),.S17(st17),.S18(st18),.S19(st19),.S20(st20),
	 .S21(st21),.S22(st22),.S23(st23),.S24(st24),.S25(st25),.S26(st26),.S27(st27),.S28(st28),.S29(st29),.S30(st30),
	 .S31(st31),.S32(st32));

reg [7:0]S;
test eu(.syn(S),.clk(clk),.reset(rst),.start(euc_st),
.add1(add1),.add2(add2),.add3(add3),.add4(add4),.add5(add5),.add6(add6),.add7(add7),.add8(add8),.add9(add9),
         .add10(add10),.add11(add11),.add12(add12),.add13(add13),.add14(add14),.add15(add15),.add16(add16)
					);




/*DATA in*/
always@(posedge clk or negedge rst)
begin
  	if((!rst))
    begin
temp0 <=#1 16'b0;
temp1 <=#1 16'b0;
temp2 <=#1 16'b0;
temp3 <=#1 16'b0;
temp4 <=#1 16'b0;
temp5 <=#1 16'b0;
temp6 <=#1 16'b0;
temp7 <=#1 16'b0;	
	
wen0<=#1 1'b0; 
wen1<=#1 1'b0; 
wen2<=#1 1'b0; 
wen3<=#1 1'b0; 
wen4<=#1 1'b0; 
wen5<=#1 1'b0; 
wen6<=#1 1'b0; 
wen7<=#1 1'b0; 

	ren<=#1 1'b0;
	
	
	addr<=#1 5'b0;
    end
    else if(start)
	begin
	    
		if(count<128)/*write*/
		begin
		//temp<=#1 RSin;
wen0<=#1 (count[2:0]==3'b000); 
wen1<=#1 (count[2:0]==3'b001); 
wen2<=#1 (count[2:0]==3'b010); 
wen3<=#1 (count[2:0]==3'b011); 
wen4<=#1 (count[2:0]==3'b100); 
wen5<=#1 (count[2:0]==3'b101); 
wen6<=#1 (count[2:0]==3'b110); 
wen7<=#1 (count[2:0]==3'b111);


temp0 <=#1 RSin;
temp1 <=#1 RSin;
temp2 <=#1 RSin;
temp3 <=#1 RSin;
temp4 <=#1 RSin;
temp5 <=#1 RSin;
temp6 <=#1 RSin;
temp7 <=#1 RSin;
		ren<=#1 1'b0;
		
		addr<=#1 count[7:3];
		end
		else if(count==128)/*read*/
		begin
wen0<=#1 1'b0; 
wen1<=#1 1'b0; 
wen2<=#1 1'b0; 
wen3<=#1 1'b0; 
wen4<=#1 1'b0; 
wen5<=#1 1'b0; 
wen6<=#1 1'b0; 
wen7<=#1 1'b0; 

		ren<=#1 1'b1;	
		
		addr<=#1 addr;
		end
		else if((count>128)&(count<144))/*read*/
		begin
wen0<=#1 1'b0; 
wen1<=#1 1'b0; 
wen2<=#1 1'b0; 
wen3<=#1 1'b0; 
wen4<=#1 1'b0; 
wen5<=#1 1'b0; 
wen6<=#1 1'b0; 
wen7<=#1 1'b0; 
		ren<=#1 1'b1;	
		
		addr<=#1 addr-5'b1;
		end
		else if(count==144)
		begin
		ren<=#1 1'b0;	
		
		addr<=#1 5'b0;
		end
		
		
		
		
		else if((count>383)&(count<400))
		begin
		
		addr<=#1 count[4:0];
		ren<=#1 1'b1;
		end
		
		
		else if(count==420)
		begin          
addr<=#1 5'd16; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q0,q1};   
temp1 <=#1 {q2,q3};   
temp2 <=#1 {q4,q5};   
temp3 <=#1 {q6,q7};   
temp4 <=#1 {q8,q9};   
temp5 <=#1 {q10,q11};   
temp6 <=#1 {q12,q13};   
temp7 <=#1 {q14,q15};   
		end	  
		
		else if(count==421)
		begin          
addr<=#1 5'd17; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q16,q17};   
temp1 <=#1 {q18,q19};   
temp2 <=#1 {q20,q21};   
temp3 <=#1 {q22,q23};   
temp4 <=#1 {q24,q25};   
temp5 <=#1 {q26,q27};   
temp6 <=#1 {q28,q29};   
temp7 <=#1 {q30,q31};   
		end	          
		 else if(count==422)
		begin          
addr<=#1 5'd18; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q32,q33};   
temp1 <=#1 {q34,q35};   
temp2 <=#1 {q36,q37};   
temp3 <=#1 {q38,q39};   
temp4 <=#1 {q40,q41};   
temp5 <=#1 {q42,q43};   
temp6 <=#1 {q44,q45};   
temp7 <=#1 {q46,q47};   
		end	        
		else if(count==423)
		begin          
addr<=#1 5'd19; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q48,q49};   
temp1 <=#1 {q50,q51};   
temp2 <=#1 {q52,q53};   
temp3 <=#1 {q54,q55};   
temp4 <=#1 {q56,q57};   
temp5 <=#1 {q58,q59};   
temp6 <=#1 {q60,q61};   
temp7 <=#1 {q62,q63};   
		end	       
		 else if(count==424)
		begin          
addr<=#1 5'd20; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q64,q65};   
temp1 <=#1 {q66,q67};   
temp2 <=#1 {q68,q69};   
temp3 <=#1 {q70,q71};   
temp4 <=#1 {q72,q73};   
temp5 <=#1 {q74,q75};   
temp6 <=#1 {q76,q77};   
temp7 <=#1 {q78,q79};   
		end	        
		else if(count==425)
		begin          
addr<=#1 5'd21; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q80,q81};   
temp1 <=#1 {q82,q83};   
temp2 <=#1 {q84,q85};   
temp3 <=#1 {q86,q87};   
temp4 <=#1 {q88,q89};   
temp5 <=#1 {q90,q91};   
temp6 <=#1 {q92,q93};   
temp7 <=#1 {q94,q95};   
		end	        
		else if(count==426)
		begin          
addr<=#1 5'd22; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q96 ,q97 };   
temp1 <=#1 {q98 ,q99 };   
temp2 <=#1 {q100,q101};   
temp3 <=#1 {q102,q103};   
temp4 <=#1 {q104,q105};   
temp5 <=#1 {q106,q107};   
temp6 <=#1 {q108,q109};   
temp7 <=#1 {q110,q111};   
		end	        
		else if(count==427)
		begin          
addr<=#1 5'd23; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q112,q113};   
temp1 <=#1 {q114,q115};   
temp2 <=#1 {q116,q117};   
temp3 <=#1 {q118,q119};   
temp4 <=#1 {q120,q121};   
temp5 <=#1 {q122,q123};   
temp6 <=#1 {q124,q125};   
temp7 <=#1 {q126,q127};   
		end	        
		else if(count==428)
		begin          
addr<=#1 5'd24; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q128,q129};   
temp1 <=#1 {q130,q131};   
temp2 <=#1 {q132,q133};   
temp3 <=#1 {q134,q135};   
temp4 <=#1 {q136,q137};   
temp5 <=#1 {q138,q139};   
temp6 <=#1 {q140,q141};   
temp7 <=#1 {q142,q143};   
		end	        
		else if(count==429)
		begin          
addr<=#1 5'd25; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q144,q145};   
temp1 <=#1 {q146,q147};   
temp2 <=#1 {q148,q149};   
temp3 <=#1 {q150,q151};   
temp4 <=#1 {q152,q153};   
temp5 <=#1 {q154,q155};   
temp6 <=#1 {q156,q157};   
temp7 <=#1 {q158,q159};   
		end	        
		else if(count==430)
		begin          
addr<=#1 5'd26; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q160,q161};   
temp1 <=#1 {q162,q163};   
temp2 <=#1 {q164,q165};   
temp3 <=#1 {q166,q167};   
temp4 <=#1 {q168,q169};   
temp5 <=#1 {q170,q171};   
temp6 <=#1 {q172,q173};   
temp7 <=#1 {q174,q175};   
		end	        
		else if(count==431)
		begin          
addr<=#1 5'd27; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q176,q177};   
temp1 <=#1 {q178,q179};   
temp2 <=#1 {q180,q181};   
temp3 <=#1 {q182,q183};   
temp4 <=#1 {q184,q185};   
temp5 <=#1 {q186,q187};   
temp6 <=#1 {q188,q189};   
temp7 <=#1 {q190,q191};   
		end	       
		else if(count==432)
		begin          
addr<=#1 5'd28; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q192,q193};   
temp1 <=#1 {q194,q195};   
temp2 <=#1 {q196,q197};   
temp3 <=#1 {q198,q199};   
temp4 <=#1 {q200,q201};   
temp5 <=#1 {q202,q203};   
temp6 <=#1 {q204,q205};   
temp7 <=#1 {q206,q207};   
		end	       
		else if(count==433)
		begin          
addr<=#1 5'd29; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q208,q209};   
temp1 <=#1 {q210,q211};   
temp2 <=#1 {q212,q213};   
temp3 <=#1 {q214,q215};   
temp4 <=#1 {q216,q217};   
temp5 <=#1 {q218,q219};   
temp6 <=#1 {q220,q221};   
temp7 <=#1 {q222,q223};   
		end	       
		else if(count==434)
		begin          
addr<=#1 5'd30; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q224,q225};   
temp1 <=#1 {q226,q227};   
temp2 <=#1 {q228,q229};   
temp3 <=#1 {q230,q231};   
temp4 <=#1 {q232,q233};   
temp5 <=#1 {q234,q235};   
temp6 <=#1 {q236,q237};   
temp7 <=#1 {q238,q239};   
		end	       
		else if(count==435)
		begin          
addr<=#1 5'd31; 
wen0<=#1 1'b1;     
wen1<=#1 1'b1;     
wen2<=#1 1'b1;     
wen3<=#1 1'b1;     
wen4<=#1 1'b1;     
wen5<=#1 1'b1;     
wen6<=#1 1'b1;     
wen7<=#1 1'b1;     
temp0 <=#1 {q240,q241};   
temp1 <=#1 {q242,q243};   
temp2 <=#1 {q244,q245};   
temp3 <=#1 {q246,q247};   
temp4 <=#1 {q248,q249};   
temp5 <=#1 {q250,q251};   
temp6 <=#1 {q252,q253};   
temp7 <=#1 {q254,q255};   
		end	       
		
		
		
	end
	
end

always@(posedge clk or negedge rst)
begin
  	if((!rst))
    begin
er<=#1 3'b0;
q0 <=#1 8'b0 ;q41<=#1 8'b0 ; q81 <=#1 8'b0 ;q121<=#1 8'b0 ; q161<=#1 8'b0 ;q201<=#1 8'b0 ;q241<=#1 8'b0 ;  
q1 <=#1 8'b0 ;q42<=#1 8'b0 ; q82 <=#1 8'b0 ;q122<=#1 8'b0 ; q162<=#1 8'b0 ;q202<=#1 8'b0 ;q242<=#1 8'b0 ;  
q2 <=#1 8'b0 ;q43<=#1 8'b0 ; q83 <=#1 8'b0 ;q123<=#1 8'b0 ; q163<=#1 8'b0 ;q203<=#1 8'b0 ;q243<=#1 8'b0 ;  
q3 <=#1 8'b0 ;q44<=#1 8'b0 ; q84 <=#1 8'b0 ;q124<=#1 8'b0 ; q164<=#1 8'b0 ;q204<=#1 8'b0 ;q244<=#1 8'b0 ;  
q4 <=#1 8'b0 ;q45<=#1 8'b0 ; q85 <=#1 8'b0 ;q125<=#1 8'b0 ; q165<=#1 8'b0 ;q205<=#1 8'b0 ;q245<=#1 8'b0 ;  
q5 <=#1 8'b0 ;q46<=#1 8'b0 ; q86 <=#1 8'b0 ;q126<=#1 8'b0 ; q166<=#1 8'b0 ;q206<=#1 8'b0 ;q246<=#1 8'b0 ;  
q6 <=#1 8'b0 ;q47<=#1 8'b0 ; q87 <=#1 8'b0 ;q127<=#1 8'b0 ; q167<=#1 8'b0 ;q207<=#1 8'b0 ;q247<=#1 8'b0 ;  
q7 <=#1 8'b0 ;q48<=#1 8'b0 ; q88 <=#1 8'b0 ;q128<=#1 8'b0 ; q168<=#1 8'b0 ;q208<=#1 8'b0 ;q248<=#1 8'b0 ;  
q8 <=#1 8'b0 ;q49<=#1 8'b0 ; q89 <=#1 8'b0 ;q129<=#1 8'b0 ; q169<=#1 8'b0 ;q209<=#1 8'b0 ;q249<=#1 8'b0 ;  
q9 <=#1 8'b0 ;q50<=#1 8'b0 ; q90 <=#1 8'b0 ;q130<=#1 8'b0 ; q170<=#1 8'b0 ;q210<=#1 8'b0 ;q250<=#1 8'b0 ;  
q10<=#1 8'b0 ;q51<=#1 8'b0 ; q91 <=#1 8'b0 ;q131<=#1 8'b0 ; q171<=#1 8'b0 ;q211<=#1 8'b0 ;q251<=#1 8'b0 ;  
q11<=#1 8'b0 ;q52<=#1 8'b0 ; q92 <=#1 8'b0 ;q132<=#1 8'b0 ; q172<=#1 8'b0 ;q212<=#1 8'b0 ;q252<=#1 8'b0 ;  
q12<=#1 8'b0 ;q53<=#1 8'b0 ; q93 <=#1 8'b0 ;q133<=#1 8'b0 ; q173<=#1 8'b0 ;q213<=#1 8'b0 ;q253<=#1 8'b0 ;  
q13<=#1 8'b0 ;q54<=#1 8'b0 ; q94 <=#1 8'b0 ;q134<=#1 8'b0 ; q174<=#1 8'b0 ;q214<=#1 8'b0 ;q254<=#1 8'b0 ;  
q14<=#1 8'b0 ;q55<=#1 8'b0 ; q95 <=#1 8'b0 ;q135<=#1 8'b0 ; q175<=#1 8'b0 ;q215<=#1 8'b0 ;q255<=#1 8'b0 ; 
q15<=#1 8'b0 ;q56<=#1 8'b0 ; q96 <=#1 8'b0 ;q136<=#1 8'b0 ; q176<=#1 8'b0 ;q216<=#1 8'b0 ;    
q16<=#1 8'b0 ;q57<=#1 8'b0 ; q97 <=#1 8'b0 ;q137<=#1 8'b0 ; q177<=#1 8'b0 ;q217<=#1 8'b0 ;    
q17<=#1 8'b0 ;q58<=#1 8'b0 ; q98 <=#1 8'b0 ;q138<=#1 8'b0 ; q178<=#1 8'b0 ;q218<=#1 8'b0 ;    
q18<=#1 8'b0 ;q59<=#1 8'b0 ; q99 <=#1 8'b0 ;q139<=#1 8'b0 ; q179<=#1 8'b0 ;q219<=#1 8'b0 ;    
q19<=#1 8'b0 ;q60<=#1 8'b0 ; q100<=#1 8'b0 ;q140<=#1 8'b0 ; q180<=#1 8'b0 ;q220<=#1 8'b0 ;    
q20<=#1 8'b0 ;q61<=#1 8'b0 ; q101<=#1 8'b0 ;q141<=#1 8'b0 ; q181<=#1 8'b0 ;q221<=#1 8'b0 ;    
q21<=#1 8'b0 ;q62<=#1 8'b0 ; q102<=#1 8'b0 ;q142<=#1 8'b0 ; q182<=#1 8'b0 ;q222<=#1 8'b0 ;    
q22<=#1 8'b0 ;q63<=#1 8'b0 ; q103<=#1 8'b0 ;q143<=#1 8'b0 ; q183<=#1 8'b0 ;q223<=#1 8'b0 ;    
q23<=#1 8'b0 ;q64<=#1 8'b0 ; q104<=#1 8'b0 ;q144<=#1 8'b0 ; q184<=#1 8'b0 ;q224<=#1 8'b0 ;    
q24<=#1 8'b0 ;q65<=#1 8'b0 ; q105<=#1 8'b0 ;q145<=#1 8'b0 ; q185<=#1 8'b0 ;q225<=#1 8'b0 ;    
q25<=#1 8'b0 ;q66<=#1 8'b0 ; q106<=#1 8'b0 ;q146<=#1 8'b0 ; q186<=#1 8'b0 ;q226<=#1 8'b0 ;    
q26<=#1 8'b0 ;q67<=#1 8'b0 ; q107<=#1 8'b0 ;q147<=#1 8'b0 ; q187<=#1 8'b0 ;q227<=#1 8'b0 ;    
q27<=#1 8'b0 ;q68<=#1 8'b0 ; q108<=#1 8'b0 ;q148<=#1 8'b0 ; q188<=#1 8'b0 ;q228<=#1 8'b0 ;    
q28<=#1 8'b0 ;q69<=#1 8'b0 ; q109<=#1 8'b0 ;q149<=#1 8'b0 ; q189<=#1 8'b0 ;q229<=#1 8'b0 ;    
q29<=#1 8'b0 ;q70<=#1 8'b0 ; q110<=#1 8'b0 ;q150<=#1 8'b0 ; q190<=#1 8'b0 ;q230<=#1 8'b0 ;    
q30<=#1 8'b0 ;q71<=#1 8'b0 ; q111<=#1 8'b0 ;q151<=#1 8'b0 ; q191<=#1 8'b0 ;q231<=#1 8'b0 ;    
q31<=#1 8'b0 ;q72<=#1 8'b0 ; q112<=#1 8'b0 ;q152<=#1 8'b0 ; q192<=#1 8'b0 ;q232<=#1 8'b0 ;    
q32<=#1 8'b0 ;q73<=#1 8'b0 ; q113<=#1 8'b0 ;q153<=#1 8'b0 ; q193<=#1 8'b0 ;q233<=#1 8'b0 ;    
q33<=#1 8'b0 ;q74<=#1 8'b0 ; q114<=#1 8'b0 ;q154<=#1 8'b0 ; q194<=#1 8'b0 ;q234<=#1 8'b0 ;    
q34<=#1 8'b0 ;q75<=#1 8'b0 ; q115<=#1 8'b0 ;q155<=#1 8'b0 ; q195<=#1 8'b0 ;q235<=#1 8'b0 ;    
q35<=#1 8'b0 ;q76<=#1 8'b0 ; q116<=#1 8'b0 ;q156<=#1 8'b0 ; q196<=#1 8'b0 ;q236<=#1 8'b0 ;    
q36<=#1 8'b0 ;q77<=#1 8'b0 ; q117<=#1 8'b0 ;q157<=#1 8'b0 ; q197<=#1 8'b0 ;q237<=#1 8'b0 ;    
q37<=#1 8'b0 ;q78<=#1 8'b0 ; q118<=#1 8'b0 ;q158<=#1 8'b0 ; q198<=#1 8'b0 ;q238<=#1 8'b0 ;    
q38<=#1 8'b0 ;q79<=#1 8'b0 ; q119<=#1 8'b0 ;q159<=#1 8'b0 ; q199<=#1 8'b0 ;q239<=#1 8'b0 ;    
q39<=#1 8'b0 ;q80<=#1 8'b0 ; q120<=#1 8'b0 ;q160<=#1 8'b0 ; q200<=#1 8'b0 ;q240<=#1 8'b0 ;    
q40<=#1 8'b0 ;                               
                          

    end
    else if(start)
	begin
	    if(count==386)
		begin
		q0  <=#1 Dout[127:120]        ;
q1  <=#1 Dout[119:112]       ;
q2  <=#1 Dout[111:104]      ;
q3  <=#1 Dout[103:96]      ;
q4  <=#1 Dout[95:88]      ;
q5  <=#1 Dout[87:80]      ;
q6  <=#1 Dout[79:72]      ;
q7  <=#1 Dout[71:64]      ;
q8  <=#1 Dout[63:56]      ;
q9  <=#1 Dout[55:48]      ;
q10 <=#1 Dout[47:40]      ;
q11 <=#1 Dout[39:32]      ;
q12 <=#1 Dout[31:24]     ;
q13 <=#1 Dout[23:16]    ;
q14 <=#1 Dout[15:8]    ;
q15 <=#1 Dout[7:0]    ;

		end
		else if(count==387)
		begin
		q16 <=#1 Dout[127:120]        ;      
q17 <=#1 Dout[119:112]       ;      
q18 <=#1 Dout[111:104]      ;      
q19 <=#1 Dout[103:96]      ;      
q20 <=#1 Dout[95:88]      ;      
q21 <=#1 Dout[87:80]      ;      
q22 <=#1 Dout[79:72]      ;      
q23 <=#1 Dout[71:64]      ;      
q24 <=#1 Dout[63:56]      ;      
q25 <=#1 Dout[55:48]      ;      
q26 <=#1 Dout[47:40]      ;      
q27 <=#1 Dout[39:32]      ;      
q28 <=#1 Dout[31:24]     ;      
q29 <=#1 Dout[23:16]    ;      
q30 <=#1 Dout[15:8]    ;      
q31 <=#1 Dout[7:0]    ;      
	
		end
		else if(count==388)
		begin
		q32 <=#1 Dout[127:120]        ;      
q33 <=#1 Dout[119:112]       ;      
q34 <=#1 Dout[111:104]      ;      
q35 <=#1 Dout[103:96]      ;      
q36 <=#1 Dout[95:88]      ;      
q37 <=#1 Dout[87:80]      ;      
q38 <=#1 Dout[79:72]      ;      
q39 <=#1 Dout[71:64]      ;      
q40 <=#1 Dout[63:56]      ;      
q41 <=#1 Dout[55:48]      ;      
q42 <=#1 Dout[47:40]      ;      
q43 <=#1 Dout[39:32]      ;      
q44 <=#1 Dout[31:24]     ;      
q45 <=#1 Dout[23:16]    ;      
q46 <=#1 Dout[15:8]    ;      
q47 <=#1 Dout[7:0]    ;      

		end
		else if(count==389)
		begin
		q48 <=#1  Dout[127:120]        ;     
q49 <=#1  Dout[119:112]       ;     
q50 <=#1  Dout[111:104]      ;     
q51 <=#1  Dout[103:96]      ;     
q52 <=#1  Dout[95:88]      ;     
q53 <=#1  Dout[87:80]      ;     
q54 <=#1  Dout[79:72]      ;     
q55 <=#1  Dout[71:64]      ;     
q56 <=#1  Dout[63:56]      ;     
q57 <=#1  Dout[55:48]      ;     
q58 <=#1  Dout[47:40]      ;     
q59 <=#1  Dout[39:32]      ;     
q60 <=#1  Dout[31:24]     ;     
q61 <=#1  Dout[23:16]    ;     
q62 <=#1  Dout[15:8]    ;     
q63 <=#1  Dout[7:0]    ;     
	
		end
		else if(count==390)
		begin
		q64 <=#1   Dout[127:120]        ;           
q65 <=#1   Dout[119:112]       ;           
q66 <=#1   Dout[111:104]      ;           
q67 <=#1   Dout[103:96]      ;           
q68 <=#1   Dout[95:88]      ;           
q69 <=#1   Dout[87:80]      ;           
q70 <=#1   Dout[79:72]      ;           
q71 <=#1   Dout[71:64]      ;           
q72 <=#1   Dout[63:56]      ;           
q73 <=#1   Dout[55:48]      ;           
q74 <=#1   Dout[47:40]      ;           
q75 <=#1   Dout[39:32]      ;           
q76 <=#1   Dout[31:24]     ;           
q77 <=#1   Dout[23:16]    ;           
q78 <=#1   Dout[15:8]    ;           
q79 <=#1   Dout[7:0]    ;           
                                        

		end
		else if(count==391)
		begin
		q80 <=#1   Dout[127:120]        ;    
q81 <=#1   Dout[119:112]       ;    
q82 <=#1   Dout[111:104]      ;    
q83 <=#1   Dout[103:96]      ;    
q84 <=#1   Dout[95:88]      ;    
q85 <=#1   Dout[87:80]      ;    
q86 <=#1   Dout[79:72]      ;    
q87 <=#1   Dout[71:64]      ;    
q88 <=#1   Dout[63:56]      ;    
q89 <=#1   Dout[55:48]      ;    
q90 <=#1   Dout[47:40]      ;    
q91 <=#1   Dout[39:32]      ;    
q92 <=#1   Dout[31:24]     ;    
q93 <=#1   Dout[23:16]    ;    
q94 <=#1   Dout[15:8]    ;    
q95 <=#1   Dout[7:0]    ;    
	
		end
		else if(count==392)
		begin
		q96 <=#1  Dout[127:120]        ;     
q97 <=#1  Dout[119:112]       ;     
q98 <=#1  Dout[111:104]      ;     
q99 <=#1  Dout[103:96]      ;     
q100<=#1  Dout[95:88]      ;     
q101<=#1  Dout[87:80]      ;     
q102<=#1  Dout[79:72]      ;     
q103<=#1  Dout[71:64]      ;     
q104<=#1  Dout[63:56]      ;     
q105<=#1  Dout[55:48]      ;     
q106<=#1  Dout[47:40]      ;     
q107<=#1  Dout[39:32]      ;     
q108<=#1  Dout[31:24]     ;     
q109<=#1  Dout[23:16]    ;     
q110<=#1  Dout[15:8]    ;     
q111<=#1  Dout[7:0]    ;     

		end
		else if(count==393)
		begin
		q112<=#1 Dout[127:120]        ;  
q113<=#1 Dout[119:112]       ;  
q114<=#1 Dout[111:104]      ;  
q115<=#1 Dout[103:96]      ;  
q116<=#1 Dout[95:88]      ;  
q117<=#1 Dout[87:80]      ;  
q118<=#1 Dout[79:72]      ;  
q119<=#1 Dout[71:64]      ;  
q120<=#1 Dout[63:56]      ;  
q121<=#1 Dout[55:48]      ;  
q122<=#1 Dout[47:40]      ;  
q123<=#1 Dout[39:32]      ;  
q124<=#1 Dout[31:24]     ;  
q125<=#1 Dout[23:16]    ;  
q126<=#1 Dout[15:8]    ;  
q127<=#1 Dout[7:0]    ;  

		end
		else if(count==394)
		begin
		q128<=#1  Dout[127:120]        ;  
q129<=#1  Dout[119:112]       ;  
q130<=#1  Dout[111:104]      ;  
q131<=#1  Dout[103:96]      ;  
q132<=#1  Dout[95:88]      ;  
q133<=#1  Dout[87:80]      ;  
q134<=#1  Dout[79:72]      ;  
q135<=#1  Dout[71:64]      ;  
q136<=#1  Dout[63:56]      ;  
q137<=#1  Dout[55:48]      ;  
q138<=#1  Dout[47:40]      ;  
q139<=#1  Dout[39:32]      ;  
q140<=#1  Dout[31:24]     ;  
q141<=#1  Dout[23:16]    ;  
q142<=#1  Dout[15:8]    ;  
q143<=#1  Dout[7:0]    ;  

		end
		else if(count==395)
		begin
		q144<=#1    Dout[127:120]        ; 
q145<=#1    Dout[119:112]       ; 
q146<=#1    Dout[111:104]      ; 
q147<=#1    Dout[103:96]      ; 
q148<=#1    Dout[95:88]      ; 
q149<=#1    Dout[87:80]      ; 
q150<=#1    Dout[79:72]      ; 
q151<=#1    Dout[71:64]      ; 
q152<=#1    Dout[63:56]      ; 
q153<=#1    Dout[55:48]      ; 
q154<=#1    Dout[47:40]      ; 
q155<=#1    Dout[39:32]      ; 
q156<=#1    Dout[31:24]     ; 
q157<=#1    Dout[23:16]    ; 
q158<=#1    Dout[15:8]    ; 
q159<=#1    Dout[7:0]    ; 

		end
		else if(count==396)
		begin
		q160<=#1     Dout[127:120]        ;     
q161<=#1     Dout[119:112]       ;     
q162<=#1     Dout[111:104]      ;     
q163<=#1     Dout[103:96]      ;     
q164<=#1     Dout[95:88]      ;     
q165<=#1     Dout[87:80]      ;     
q166<=#1     Dout[79:72]      ;     
q167<=#1     Dout[71:64]      ;     
q168<=#1     Dout[63:56]      ;     
q169<=#1     Dout[55:48]      ;     
q170<=#1     Dout[47:40]      ;     
q171<=#1     Dout[39:32]      ;     
q172<=#1     Dout[31:24]     ;     
q173<=#1     Dout[23:16]    ;     
q174<=#1     Dout[15:8]    ;     
q175<=#1     Dout[7:0]    ;     
	
		end
		else if(count==397)
		begin
		q176<=#1    Dout[127:120]        ;
q177<=#1    Dout[119:112]       ;
q178<=#1    Dout[111:104]      ;
q179<=#1    Dout[103:96]      ;
q180<=#1    Dout[95:88]      ;
q181<=#1    Dout[87:80]      ;
q182<=#1    Dout[79:72]      ;
q183<=#1    Dout[71:64]      ;
q184<=#1    Dout[63:56]      ;
q185<=#1    Dout[55:48]      ;
q186<=#1    Dout[47:40]      ;
q187<=#1    Dout[39:32]      ;
q188<=#1    Dout[31:24]     ;
q189<=#1    Dout[23:16]    ;
q190<=#1    Dout[15:8]    ;
q191<=#1    Dout[7:0]    ;
                              
	
		end
		else if(count==398)
		begin
		q192<=#1    Dout[127:120]        ;      
q193<=#1    Dout[119:112]       ;      
q194<=#1    Dout[111:104]      ;      
q195<=#1    Dout[103:96]      ;      
q196<=#1    Dout[95:88]      ;      
q197<=#1    Dout[87:80]      ;      
q198<=#1    Dout[79:72]      ;      
q199<=#1    Dout[71:64]      ;      
q200<=#1    Dout[63:56]      ;      
q201<=#1    Dout[55:48]      ;      
q202<=#1    Dout[47:40]      ;      
q203<=#1    Dout[39:32]      ;      
q204<=#1    Dout[31:24]     ;      
q205<=#1    Dout[23:16]    ;      
q206<=#1    Dout[15:8]    ;      
q207<=#1    Dout[7:0]    ;      
	
		end
		else if(count==399)
		begin
		q208<=#1 Dout[127:120]        ;
q209<=#1 Dout[119:112]       ;
q210<=#1 Dout[111:104]      ;
q211<=#1 Dout[103:96]      ;
q212<=#1 Dout[95:88]      ;
q213<=#1 Dout[87:80]      ;
q214<=#1 Dout[79:72]      ;
q215<=#1 Dout[71:64]      ;
q216<=#1 Dout[63:56]      ;
q217<=#1 Dout[55:48]      ;
q218<=#1 Dout[47:40]      ;
q219<=#1 Dout[39:32]      ;
q220<=#1 Dout[31:24]     ;
q221<=#1 Dout[23:16]    ;
q222<=#1 Dout[15:8]    ;
q223<=#1 Dout[7:0]    ;
	
		end
		else if(count==400)
		begin
		q224<=#1 Dout[127:120]        ; 
q225<=#1 Dout[119:112]       ; 
q226<=#1 Dout[111:104]      ; 
q227<=#1 Dout[103:96]      ; 
q228<=#1 Dout[95:88]      ; 
q229<=#1 Dout[87:80]      ; 
q230<=#1 Dout[79:72]      ; 
q231<=#1 Dout[71:64]      ; 
q232<=#1 Dout[63:56]      ; 
q233<=#1 Dout[55:48]      ; 
q234<=#1 Dout[47:40]      ; 
q235<=#1 Dout[39:32]      ; 
q236<=#1 Dout[31:24]     ; 
q237<=#1 Dout[23:16]    ; 
q238<=#1 Dout[15:8]    ; 
q239<=#1 Dout[7:0]    ; 
		
		end
		else if(count==401)
		begin
		q240<=#1 Dout[127:120]        ;   
q241<=#1 Dout[119:112]       ;   
q242<=#1 Dout[111:104]      ;   
q243<=#1 Dout[103:96]      ;   
q244<=#1 Dout[95:88]      ;   
q245<=#1 Dout[87:80]      ;   
q246<=#1 Dout[79:72]      ;   
q247<=#1 Dout[71:64]      ;   
q248<=#1 Dout[63:56]      ;   
q249<=#1 Dout[55:48]      ;   
q250<=#1 Dout[47:40]      ;   
q251<=#1 Dout[39:32]      ;   
q252<=#1 Dout[31:24]     ;   
q253<=#1 Dout[23:16]    ;   
q254<=#1 Dout[15:8]    ;   
q255<=#1 Dout[7:0]    ;  
	
		end
		//--
		else if(count==404)
		begin
		q255<=#1 8'b0;
		
q239<=#1 q239^add16   ; 
q240<=#1 q240^add15   ; 
q241<=#1 q241^add14   ; 
q242<=#1 q242^add13   ; 
q243<=#1 q243^add12   ; 
q244<=#1 q244^add11   ; 
q245<=#1 q245^add10   ; 
q246<=#1 q246^add9    ; 
q247<=#1 q247^add8    ; 
q248<=#1 q248^add7    ; 
q249<=#1 q249^add6    ; 
q250<=#1 q250^add5    ; 
q251<=#1 q251^add4    ; 
q252<=#1 q252^add3    ; 
q253<=#1 q253^add2    ; 
q254<=#1 q254^add1    ; 
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
	
		end
		else if(count==405)
		begin
	q223<=#1 q223^add16   ;        
q224<=#1 q224^add15   ;        
q225<=#1 q225^add14   ;        
q226<=#1 q226^add13   ;        
q227<=#1 q227^add12   ;        
q228<=#1 q228^add11   ;        
q229<=#1 q229^add10   ;        
q230<=#1 q230^add9    ;        
q231<=#1 q231^add8    ;        
q232<=#1 q232^add7    ;        
q233<=#1 q233^add6    ;        
q234<=#1 q234^add5    ;        
q235<=#1 q235^add4    ;        
q236<=#1 q236^add3    ;        
q237<=#1 q237^add2    ;        
q238<=#1 q238^add1    ;        
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==406)
		begin
	q207<=#1 q207^add16   ;  
q208<=#1 q208^add15   ;  
q209<=#1 q209^add14   ;  
q210<=#1 q210^add13   ;  
q211<=#1 q211^add12   ;  
q212<=#1 q212^add11   ;  
q213<=#1 q213^add10   ;  
q214<=#1 q214^add9    ;  
q215<=#1 q215^add8    ;  
q216<=#1 q216^add7    ;  
q217<=#1 q217^add6    ;  
q218<=#1 q218^add5    ;  
q219<=#1 q219^add4    ;  
q220<=#1 q220^add3    ;  
q221<=#1 q221^add2    ;  
q222<=#1 q222^add1    ;  
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==407)
		begin
	q191<=#1 q191^add16   ;          
q192<=#1 q192^add15   ;          
q193<=#1 q193^add14   ;          
q194<=#1 q194^add13   ;          
q195<=#1 q195^add12   ;          
q196<=#1 q196^add11   ;          
q197<=#1 q197^add10   ;          
q198<=#1 q198^add9    ;          
q199<=#1 q199^add8    ;          
q200<=#1 q200^add7    ;          
q201<=#1 q201^add6    ;          
q202<=#1 q202^add5    ;          
q203<=#1 q203^add4    ;          
q204<=#1 q204^add3    ;          
q205<=#1 q205^add2    ;          
q206<=#1 q206^add1    ;          
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==408)
		begin
	q175<=#1 q175^add16   ;            
q176<=#1 q176^add15   ;            
q177<=#1 q177^add14   ;            
q178<=#1 q178^add13   ;            
q179<=#1 q179^add12   ;            
q180<=#1 q180^add11   ;            
q181<=#1 q181^add10   ;            
q182<=#1 q182^add9    ;            
q183<=#1 q183^add8    ;            
q184<=#1 q184^add7    ;            
q185<=#1 q185^add6    ;            
q186<=#1 q186^add5    ;            
q187<=#1 q187^add4    ;            
q188<=#1 q188^add3    ;            
q189<=#1 q189^add2    ;            
q190<=#1 q190^add1    ;            
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==409)
		begin
	q159<=#1 q159^add16   ;      
q160<=#1 q160^add15   ;      
q161<=#1 q161^add14   ;      
q162<=#1 q162^add13   ;      
q163<=#1 q163^add12   ;      
q164<=#1 q164^add11   ;      
q165<=#1 q165^add10   ;      
q166<=#1 q166^add9    ;      
q167<=#1 q167^add8    ;      
q168<=#1 q168^add7    ;      
q169<=#1 q169^add6    ;      
q170<=#1 q170^add5    ;      
q171<=#1 q171^add4    ;      
q172<=#1 q172^add3    ;      
q173<=#1 q173^add2    ;      
q174<=#1 q174^add1    ;      
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==410)
		begin
	q143<=#1 q143^add16   ;        
q144<=#1 q144^add15   ;        
q145<=#1 q145^add14   ;        
q146<=#1 q146^add13   ;        
q147<=#1 q147^add12   ;        
q148<=#1 q148^add11   ;        
q149<=#1 q149^add10   ;        
q150<=#1 q150^add9    ;        
q151<=#1 q151^add8    ;        
q152<=#1 q152^add7    ;        
q153<=#1 q153^add6    ;        
q154<=#1 q154^add5    ;        
q155<=#1 q155^add4    ;        
q156<=#1 q156^add3    ;        
q157<=#1 q157^add2    ;        
q158<=#1 q158^add1    ;        
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==411)
		begin
	q127<=#1 q127^add16   ;      
q128<=#1 q128^add15   ;      
q129<=#1 q129^add14   ;      
q130<=#1 q130^add13   ;      
q131<=#1 q131^add12   ;      
q132<=#1 q132^add11   ;      
q133<=#1 q133^add10   ;      
q134<=#1 q134^add9    ;      
q135<=#1 q135^add8    ;      
q136<=#1 q136^add7    ;      
q137<=#1 q137^add6    ;      
q138<=#1 q138^add5    ;      
q139<=#1 q139^add4    ;      
q140<=#1 q140^add3    ;      
q141<=#1 q141^add2    ;      
q142<=#1 q142^add1    ;      
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==412)
		begin
	q111<=#1 q111^add16   ;           
q112<=#1 q112^add15   ;           
q113<=#1 q113^add14   ;           
q114<=#1 q114^add13   ;           
q115<=#1 q115^add12   ;           
q116<=#1 q116^add11   ;           
q117<=#1 q117^add10   ;           
q118<=#1 q118^add9    ;           
q119<=#1 q119^add8    ;           
q120<=#1 q120^add7    ;           
q121<=#1 q121^add6    ;           
q122<=#1 q122^add5    ;           
q123<=#1 q123^add4    ;           
q124<=#1 q124^add3    ;           
q125<=#1 q125^add2    ;           
q126<=#1 q126^add1    ;           
 if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end                                 

		end
		else if(count==413)
		begin
	q95 <=#1 q95 ^add16   ;      
q96 <=#1 q96 ^add15   ;      
q97 <=#1 q97 ^add14   ;      
q98 <=#1 q98 ^add13   ;      
q99 <=#1 q99 ^add12   ;      
q100<=#1 q100^add11   ;      
q101<=#1 q101^add10   ;      
q102<=#1 q102^add9    ;      
q103<=#1 q103^add8    ;      
q104<=#1 q104^add7    ;      
q105<=#1 q105^add6    ;      
q106<=#1 q106^add5    ;      
q107<=#1 q107^add4    ;      
q108<=#1 q108^add3    ;      
q109<=#1 q109^add2    ;      
q110<=#1 q110^add1    ;      
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==414)
		begin
	q79 <=#1 q79 ^add16   ;       
q80 <=#1 q80 ^add15   ;       
q81 <=#1 q81 ^add14   ;       
q82 <=#1 q82 ^add13   ;       
q83 <=#1 q83 ^add12   ;       
q84 <=#1 q84 ^add11   ;       
q85 <=#1 q85 ^add10   ;       
q86 <=#1 q86 ^add9    ;       
q87 <=#1 q87 ^add8    ;       
q88 <=#1 q88 ^add7    ;       
q89 <=#1 q89 ^add6    ;       
q90 <=#1 q90 ^add5    ;       
q91 <=#1 q91 ^add4    ;       
q92 <=#1 q92 ^add3    ;       
q93 <=#1 q93 ^add2    ;       
q94 <=#1 q94 ^add1    ;       
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end		end
		else if(count==415)
		begin
	q63 <=#1 q63 ^add16   ;         
q64 <=#1 q64 ^add15   ;         
q65 <=#1 q65 ^add14   ;         
q66 <=#1 q66 ^add13   ;         
q67 <=#1 q67 ^add12   ;         
q68 <=#1 q68 ^add11   ;         
q69 <=#1 q69 ^add10   ;         
q70 <=#1 q70 ^add9    ;         
q71 <=#1 q71 ^add8    ;         
q72 <=#1 q72 ^add7    ;         
q73 <=#1 q73 ^add6    ;         
q74 <=#1 q74 ^add5    ;         
q75 <=#1 q75 ^add4    ;         
q76 <=#1 q76 ^add3    ;         
q77 <=#1 q77 ^add2    ;         
q78 <=#1 q78 ^add1    ;         
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==416)
		begin
	q47 <=#1 q47 ^add16   ;      
q48 <=#1 q48 ^add15   ;      
q49 <=#1 q49 ^add14   ;      
q50 <=#1 q50 ^add13   ;      
q51 <=#1 q51 ^add12   ;      
q52 <=#1 q52 ^add11   ;      
q53 <=#1 q53 ^add10   ;      
q54 <=#1 q54 ^add9    ;      
q55 <=#1 q55 ^add8    ;      
q56 <=#1 q56 ^add7    ;      
q57 <=#1 q57 ^add6    ;      
q58 <=#1 q58 ^add5    ;      
q59 <=#1 q59 ^add4    ;      
q60 <=#1 q60 ^add3    ;      
q61 <=#1 q61 ^add2    ;      
q62 <=#1 q62 ^add1    ;      
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==417)
		begin
	q31 <=#1 q31 ^add16   ;        
q32 <=#1 q32 ^add15   ;        
q33 <=#1 q33 ^add14   ;        
q34 <=#1 q34 ^add13   ;        
q35 <=#1 q35 ^add12   ;        
q36 <=#1 q36 ^add11   ;        
q37 <=#1 q37 ^add10   ;        
q38 <=#1 q38 ^add9    ;        
q39 <=#1 q39 ^add8    ;        
q40 <=#1 q40 ^add7    ;        
q41 <=#1 q41 ^add6    ;        
q42 <=#1 q42 ^add5    ;        
q43 <=#1 q43 ^add4    ;        
q44 <=#1 q44 ^add3    ;        
q45 <=#1 q45 ^add2    ;        
q46 <=#1 q46 ^add1    ;        
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end

		end
		else if(count==418)
		begin
	
	q15 <=#1 q15 ^add16   ;  
q16 <=#1 q16 ^add15   ;  
q17 <=#1 q17 ^add14   ;  
q18 <=#1 q18 ^add13   ;  
q19 <=#1 q19 ^add12   ;  
q20 <=#1 q20 ^add11   ;  
q21 <=#1 q21 ^add10   ;  
q22 <=#1 q22 ^add9    ;  
q23 <=#1 q23 ^add8    ;  
q24 <=#1 q24 ^add7    ;  
q25 <=#1 q25 ^add6    ;  
q26 <=#1 q26 ^add5    ;  
q27 <=#1 q27 ^add4    ;  
q28 <=#1 q28 ^add3    ;  
q29 <=#1 q29 ^add2    ;  
q30 <=#1 q30 ^add1    ;  
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
if(add16!=0) begin er=er+3'b1;  end
		end
		else if(count==419)
		begin
	q0  <=#1 q0  ^add15   ;
q1  <=#1 q1  ^add14   ;
q2  <=#1 q2  ^add13   ;
q3  <=#1 q3  ^add12   ;
q4  <=#1 q4  ^add11   ;
q5  <=#1 q5  ^add10   ;
q6  <=#1 q6  ^add9    ;
q7  <=#1 q7  ^add8    ;
q8  <=#1 q8  ^add7    ;
q9  <=#1 q9  ^add6    ;
q10 <=#1 q10 ^add5    ;
q11 <=#1 q11 ^add4    ;
q12 <=#1 q12 ^add3    ;
q13 <=#1 q13 ^add2    ;
q14 <=#1 q14 ^add1    ;
if(add1 !=0) begin er=er+3'b1;  end
if(add2 !=0) begin er=er+3'b1;  end
if(add3 !=0) begin er=er+3'b1;  end
if(add4 !=0) begin er=er+3'b1;  end
if(add5 !=0) begin er=er+3'b1;  end
if(add6 !=0) begin er=er+3'b1;  end
if(add7 !=0) begin er=er+3'b1;  end
if(add8 !=0) begin er=er+3'b1;  end
if(add9 !=0) begin er=er+3'b1;  end
if(add10!=0) begin er=er+3'b1;  end
if(add11!=0) begin er=er+3'b1;  end
if(add12!=0) begin er=er+3'b1;  end
if(add13!=0) begin er=er+3'b1;  end
if(add14!=0) begin er=er+3'b1;  end
if(add15!=0) begin er=er+3'b1;  end
		end			
		
		
			
		
		
	end
	
	
	
end







/*SYN IN*/
always@(posedge clk or negedge rst)
begin
  	if((!rst))
    begin
	syn_in<=#1 128'b0;
	syn_st<=#1 1'b0;
    end
    else if(start)
	begin
	    if(count==130)
		begin
		syn_in<=#1 mu;
		syn_st<=#1 1'b1;
		end
		else if((count>130)&(count<146))
		begin
		syn_in<=#1 Dout;
		syn_st<=#1 1'b1;		
		end
		else 
		begin
		syn_in<=#1 128'b0;
		syn_st<=#1 1'b0;
		end
	end
end

/*euc IN*/

always@(posedge clk or negedge rst)
begin
  	if((!rst))
    begin
	S<=#1 8'b0;
	euc_st<=#1 1'b0;
    end
    else if(start)
	begin
	    if(count==147)
		begin
		S<=#1 st32;
	    euc_st<=#1 1'b1;
		end
		else if(count==148)
		begin
		S<=#1 st31;
	    euc_st<=#1 1'b1;	
		end
		else if(count==149)
		begin
		S<=#1 st30;
	    euc_st<=#1 1'b1;	
		end
		else if(count==150)
		begin
		S<=#1 st29;
	    euc_st<=#1 1'b1;	
		end
		else if(count==151)
		begin
		S<=#1 st28;
	    euc_st<=#1 1'b1;	
		end
		else if(count==152)
		begin
		S<=#1 st27;
	    euc_st<=#1 1'b1;	
		end
		else if(count==153)
		begin
		S<=#1 st26;
	    euc_st<=#1 1'b1;	
		end
		else if(count==154)
		begin
		S<=#1 st25;
	    euc_st<=#1 1'b1;	
		end
		else if(count==155)
		begin
		S<=#1 st24;
	    euc_st<=#1 1'b1;	
		end
		else if(count==156)
		begin
		S<=#1 st23;
	    euc_st<=#1 1'b1;	
		end
		else if(count==157)
		begin
		S<=#1 st22;
	    euc_st<=#1 1'b1;	
		end
		else if(count==158)
		begin
		S<=#1 st21;
	    euc_st<=#1 1'b1;	
		end
		else if(count==159)
		begin
		S<=#1 st20;
	    euc_st<=#1 1'b1;	
		end
		else if(count==160)
		begin
		S<=#1 st19;
	    euc_st<=#1 1'b1;	
		end
		else if(count==161)
		begin
		S<=#1 st18;
	    euc_st<=#1 1'b1;	
		end
		else if(count==162)
		begin
		S<=#1 st17;
	    euc_st<=#1 1'b1;	
		end
		else if(count==163)
		begin
		S<=#1 st16;
	    euc_st<=#1 1'b1;	
		end
		else if(count==164)
		begin
		S<=#1 st15;
	    euc_st<=#1 1'b1;	
		end
		else if(count==165)
		begin
		S<=#1 st14;
	    euc_st<=#1 1'b1;	
		end
		else if(count==166)
		begin
		S<=#1 st13;
	    euc_st<=#1 1'b1;	
		end
		else if(count==167)
		begin
		S<=#1 st12;
	    euc_st<=#1 1'b1;	
		end
		else if(count==168)
		begin
		S<=#1 st11;
	    euc_st<=#1 1'b1;	
		end
		else if(count==169)
		begin
		S<=#1 st10;
	    euc_st<=#1 1'b1;	
		end
		else if(count==170)
		begin
		S<=#1 st9;
	    euc_st<=#1 1'b1;	
		end
		else if(count==171)
		begin
		S<=#1 st8;
	    euc_st<=#1 1'b1;	
		end
		else if(count==172)
		begin
		S<=#1 st7;
	    euc_st<=#1 1'b1;	
		end
		else if(count==173)
		begin
		S<=#1 st6;
	    euc_st<=#1 1'b1;	
		end
		else if(count==174)
		begin
		S<=#1 st5;
	    euc_st<=#1 1'b1;	
		end
		else if(count==175)
		begin
		S<=#1 st4;
	    euc_st<=#1 1'b1;	
		end
		else if(count==176)
		begin
		S<=#1 st3;
	    euc_st<=#1 1'b1;	
		end
		else if(count==177)
		begin
		S<=#1 st2;
	    euc_st<=#1 1'b1;	
		end
		else if(count==178)
		begin
		S<=#1 st1;
	    euc_st<=#1 1'b1;	
		end
		else if(count>178)
		begin
	    S<=#1 8'b0;
	    euc_st<=#1 1'b1;	
		end
		
	end
end





always@(posedge clk or negedge rst)
begin
  	if(!rst)
    begin
      count    <=#1 11'b0;

    end
 	else if(start)
	begin
		 if(count==11'd2000)
	   	 begin
	       count <=#1 11'b0;
	     end
		  else
		begin
    	 count <=#1 count+11'b1;
		end
	end
	else
	begin
      
      count    <=#1 count;

	end
end
//--DATAout
always@(posedge clk or negedge rst)
begin
  	if((!rst))
    begin
    RSout<=#1 8'b0;
	end
	else if(start)
	begin
	
	if(count==418) begin  RSout<=#1 q32 ;  end
else if(count==419) begin  RSout<=#1 q33 ;  end
else if(count==420) begin  RSout<=#1 q34 ;  end
else if(count==421) begin  RSout<=#1 q35 ;  end
else if(count==422) begin  RSout<=#1 q36 ;  end
else if(count==423) begin  RSout<=#1 q37 ;  end
else if(count==424) begin  RSout<=#1 q38 ;  end
else if(count==425) begin  RSout<=#1 q39 ;  end
else if(count==426) begin  RSout<=#1 q40 ;  end
else if(count==427) begin  RSout<=#1 q41 ;  end
else if(count==428) begin  RSout<=#1 q42 ;  end
else if(count==429) begin  RSout<=#1 q43 ;  end
else if(count==430) begin  RSout<=#1 q44 ;  end
else if(count==431) begin  RSout<=#1 q45 ;  end
else if(count==432) begin  RSout<=#1 q46 ;  end
else if(count==433) begin  RSout<=#1 q47 ;  end
else if(count==434) begin  RSout<=#1 q48 ;  end
else if(count==435) begin  RSout<=#1 q49 ;  end
else if(count==436) begin  RSout<=#1 q50 ;  end
else if(count==437) begin  RSout<=#1 q51 ;  end
else if(count==438) begin  RSout<=#1 q52 ;  end
else if(count==439) begin  RSout<=#1 q53 ;  end
else if(count==440) begin  RSout<=#1 q54 ;  end
else if(count==441) begin  RSout<=#1 q55 ;  end
else if(count==442) begin  RSout<=#1 q56 ;  end
else if(count==443) begin  RSout<=#1 q57 ;  end
else if(count==444) begin  RSout<=#1 q58 ;  end
else if(count==445) begin  RSout<=#1 q59 ;  end
else if(count==446) begin  RSout<=#1 q60 ;  end
else if(count==447) begin  RSout<=#1 q61 ;  end
else if(count==448) begin  RSout<=#1 q62 ;  end
else if(count==449) begin  RSout<=#1 q63 ;  end
else if(count==450) begin  RSout<=#1 q64 ;  end
else if(count==451) begin  RSout<=#1 q65 ;  end
else if(count==452) begin  RSout<=#1 q66 ;  end
else if(count==453) begin  RSout<=#1 q67 ;  end
else if(count==454) begin  RSout<=#1 q68 ;  end
else if(count==455) begin  RSout<=#1 q69 ;  end
else if(count==456) begin  RSout<=#1 q70 ;  end
else if(count==457) begin  RSout<=#1 q71 ;  end
else if(count==458) begin  RSout<=#1 q72 ;  end
else if(count==459) begin  RSout<=#1 q73 ;  end
else if(count==460) begin  RSout<=#1 q74 ;  end
else if(count==461) begin  RSout<=#1 q75 ;  end
else if(count==462) begin  RSout<=#1 q76 ;  end
else if(count==463) begin  RSout<=#1 q77 ;  end
else if(count==464) begin  RSout<=#1 q78 ;  end
else if(count==465) begin  RSout<=#1 q79 ;  end
else if(count==466) begin  RSout<=#1 q80 ;  end
else if(count==467) begin  RSout<=#1 q81 ;  end
else if(count==468) begin  RSout<=#1 q82 ;  end
else if(count==469) begin  RSout<=#1 q83 ;  end
else if(count==470) begin  RSout<=#1 q84 ;  end
else if(count==471) begin  RSout<=#1 q85 ;  end
else if(count==472) begin  RSout<=#1 q86 ;  end
else if(count==473) begin  RSout<=#1 q87 ;  end
else if(count==474) begin  RSout<=#1 q88 ;  end
else if(count==475) begin  RSout<=#1 q89 ;  end
else if(count==476) begin  RSout<=#1 q90 ;  end
else if(count==477) begin  RSout<=#1 q91 ;  end
else if(count==478) begin  RSout<=#1 q92 ;  end
else if(count==479) begin  RSout<=#1 q93 ;  end
else if(count==480) begin  RSout<=#1 q94 ;  end
else if(count==481) begin  RSout<=#1 q95 ;  end
else if(count==482) begin  RSout<=#1 q96 ;  end
else if(count==483) begin  RSout<=#1 q97 ;  end
else if(count==484) begin  RSout<=#1 q98 ;  end
else if(count==485) begin  RSout<=#1 q99 ;  end
else if(count==486) begin  RSout<=#1 q100;  end
else if(count==487) begin  RSout<=#1 q101;  end
else if(count==488) begin  RSout<=#1 q102;  end
else if(count==489) begin  RSout<=#1 q103;  end
else if(count==490) begin  RSout<=#1 q104;  end
else if(count==491) begin  RSout<=#1 q105;  end
else if(count==492) begin  RSout<=#1 q106;  end
else if(count==493) begin  RSout<=#1 q107;  end
else if(count==494) begin  RSout<=#1 q108;  end
else if(count==495) begin  RSout<=#1 q109;  end
else if(count==496) begin  RSout<=#1 q110;  end
else if(count==497) begin  RSout<=#1 q111;  end
else if(count==498) begin  RSout<=#1 q112;  end
else if(count==499) begin  RSout<=#1 q113;  end
else if(count==500) begin  RSout<=#1 q114;  end
else if(count==501) begin  RSout<=#1 q115;  end
else if(count==502) begin  RSout<=#1 q116;  end
else if(count==503) begin  RSout<=#1 q117;  end
else if(count==504) begin  RSout<=#1 q118;  end
else if(count==505) begin  RSout<=#1 q119;  end
else if(count==506) begin  RSout<=#1 q120;  end
else if(count==507) begin  RSout<=#1 q121;  end
else if(count==508) begin  RSout<=#1 q122;  end
else if(count==509) begin  RSout<=#1 q123;  end
else if(count==510) begin  RSout<=#1 q124;  end
else if(count==511) begin  RSout<=#1 q125;  end
else if(count==512) begin  RSout<=#1 q126;  end
else if(count==513) begin  RSout<=#1 q127;  end
else if(count==514) begin  RSout<=#1 q128;  end
else if(count==515) begin  RSout<=#1 q129;  end
else if(count==516) begin  RSout<=#1 q130;  end
else if(count==517) begin  RSout<=#1 q131;  end
else if(count==518) begin  RSout<=#1 q132;  end
else if(count==519) begin  RSout<=#1 q133;  end
else if(count==520) begin  RSout<=#1 q134;  end
else if(count==521) begin  RSout<=#1 q135;  end
else if(count==522) begin  RSout<=#1 q136;  end
else if(count==523) begin  RSout<=#1 q137;  end
else if(count==524) begin  RSout<=#1 q138;  end
else if(count==525) begin  RSout<=#1 q139;  end
else if(count==526) begin  RSout<=#1 q140;  end
else if(count==527) begin  RSout<=#1 q141;  end
else if(count==528) begin  RSout<=#1 q142;  end
else if(count==529) begin  RSout<=#1 q143;  end
else if(count==530) begin  RSout<=#1 q144;  end
else if(count==531) begin  RSout<=#1 q145;  end
else if(count==532) begin  RSout<=#1 q146;  end
else if(count==533) begin  RSout<=#1 q147;  end
else if(count==534) begin  RSout<=#1 q148;  end
else if(count==535) begin  RSout<=#1 q149;  end
else if(count==536) begin  RSout<=#1 q150;  end
else if(count==537) begin  RSout<=#1 q151;  end
else if(count==538) begin  RSout<=#1 q152;  end
else if(count==539) begin  RSout<=#1 q153;  end
else if(count==540) begin  RSout<=#1 q154;  end
else if(count==541) begin  RSout<=#1 q155;  end
else if(count==542) begin  RSout<=#1 q156;  end
else if(count==543) begin  RSout<=#1 q157;  end
else if(count==544) begin  RSout<=#1 q158;  end
else if(count==545) begin  RSout<=#1 q159;  end
else if(count==546) begin  RSout<=#1 q160;  end
else if(count==547) begin  RSout<=#1 q161;  end
else if(count==548) begin  RSout<=#1 q162;  end
else if(count==549) begin  RSout<=#1 q163;  end
else if(count==550) begin  RSout<=#1 q164;  end
else if(count==551) begin  RSout<=#1 q165;  end
else if(count==552) begin  RSout<=#1 q166;  end
else if(count==553) begin  RSout<=#1 q167;  end
else if(count==554) begin  RSout<=#1 q168;  end
else if(count==555) begin  RSout<=#1 q169;  end
else if(count==556) begin  RSout<=#1 q170;  end
else if(count==557) begin  RSout<=#1 q171;  end
else if(count==558) begin  RSout<=#1 q172;  end
else if(count==559) begin  RSout<=#1 q173;  end
else if(count==560) begin  RSout<=#1 q174;  end
else if(count==561) begin  RSout<=#1 q175;  end
else if(count==562) begin  RSout<=#1 q176;  end
else if(count==563) begin  RSout<=#1 q177;  end
else if(count==564) begin  RSout<=#1 q178;  end
else if(count==565) begin  RSout<=#1 q179;  end
else if(count==566) begin  RSout<=#1 q180;  end
else if(count==567) begin  RSout<=#1 q181;  end
else if(count==568) begin  RSout<=#1 q182;  end
else if(count==569) begin  RSout<=#1 q183;  end
else if(count==570) begin  RSout<=#1 q184;  end
else if(count==571) begin  RSout<=#1 q185;  end
else if(count==572) begin  RSout<=#1 q186;  end
else if(count==573) begin  RSout<=#1 q187;  end
else if(count==574) begin  RSout<=#1 q188;  end
else if(count==575) begin  RSout<=#1 q189;  end
else if(count==576) begin  RSout<=#1 q190;  end
else if(count==577) begin  RSout<=#1 q191;  end
else if(count==578) begin  RSout<=#1 q192;  end
else if(count==579) begin  RSout<=#1 q193;  end
else if(count==580) begin  RSout<=#1 q194;  end
else if(count==581) begin  RSout<=#1 q195;  end
else if(count==582) begin  RSout<=#1 q196;  end
else if(count==583) begin  RSout<=#1 q197;  end
else if(count==584) begin  RSout<=#1 q198;  end
else if(count==585) begin  RSout<=#1 q199;  end
else if(count==586) begin  RSout<=#1 q200;  end
else if(count==587) begin  RSout<=#1 q201;  end
else if(count==588) begin  RSout<=#1 q202;  end
else if(count==589) begin  RSout<=#1 q203;  end
else if(count==590) begin  RSout<=#1 q204;  end
else if(count==591) begin  RSout<=#1 q205;  end
else if(count==592) begin  RSout<=#1 q206;  end
else if(count==593) begin  RSout<=#1 q207;  end
else if(count==594) begin  RSout<=#1 q208;  end
else if(count==595) begin  RSout<=#1 q209;  end
else if(count==596) begin  RSout<=#1 q210;  end
else if(count==597) begin  RSout<=#1 q211;  end
else if(count==598) begin  RSout<=#1 q212;  end
else if(count==599) begin  RSout<=#1 q213;  end
else if(count==600) begin  RSout<=#1 q214;  end
else if(count==601) begin  RSout<=#1 q215;  end
else if(count==602) begin  RSout<=#1 q216;  end
else if(count==603) begin  RSout<=#1 q217;  end
else if(count==604) begin  RSout<=#1 q218;  end
else if(count==605) begin  RSout<=#1 q219;  end
else if(count==606) begin  RSout<=#1 q220;  end
else if(count==607) begin  RSout<=#1 q221;  end
else if(count==608) begin  RSout<=#1 q222;  end
else if(count==609) begin  RSout<=#1 q223;  end
else if(count==610) begin  RSout<=#1 q224;  end
else if(count==611) begin  RSout<=#1 q225;  end
else if(count==612) begin  RSout<=#1 q226;  end
else if(count==613) begin  RSout<=#1 q227;  end
else if(count==614) begin  RSout<=#1 q228;  end
else if(count==615) begin  RSout<=#1 q229;  end
else if(count==616) begin  RSout<=#1 q230;  end
else if(count==617) begin  RSout<=#1 q231;  end
else if(count==618) begin  RSout<=#1 q232;  end
else if(count==619) begin  RSout<=#1 q233;  end
else if(count==620) begin  RSout<=#1 q234;  end
else if(count==621) begin  RSout<=#1 q235;  end
else if(count==622) begin  RSout<=#1 q236;  end
else if(count==623) begin  RSout<=#1 q237;  end
else if(count==624) begin  RSout<=#1 q238;  end
else if(count==625) begin  RSout<=#1 q239;  end
else if(count==626) begin  RSout<=#1 q240;  end
else if(count==627) begin  RSout<=#1 q241;  end
else if(count==628) begin  RSout<=#1 q242;  end
else if(count==629) begin  RSout<=#1 q243;  end
else if(count==630) begin  RSout<=#1 q244;  end
else if(count==631) begin  RSout<=#1 q245;  end
else if(count==632) begin  RSout<=#1 q246;  end
else if(count==633) begin  RSout<=#1 q247;  end
else if(count==634) begin  RSout<=#1 q248;  end
else if(count==635) begin  RSout<=#1 q249;  end
else if(count==636) begin  RSout<=#1 q250;  end
else if(count==637) begin  RSout<=#1 q251;  end
else if(count==638) begin  RSout<=#1 q252;  end
else if(count==639) begin  RSout<=#1 q253;  end
else if(count==640) begin  RSout<=#1 q254;  end
	end
end



endmodule