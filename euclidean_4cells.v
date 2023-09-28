module euclidean_4cells(deg_Ri,deg_Qi,stop_i,//1,stop_i2,
                         Rin,Qin,Lin,Uin,start,start_cnt,//input
                         deg_Ro,deg_Qo,stop_o,//1,stop_o2,
				     Rout,Qout,Lout,Uout,st_out,//output
				     clk,reset);//~~~~~~~~~~~~~~`


input clk,reset;
input stop_i;//1,stop_i2;
input start_cnt;

//---------degree------------
input [5:0]deg_Ri,deg_Qi;

//--------- poly--------------
input [7:0]Rin,Qin,Lin,Uin;
input start;

//---------degree------------
output [5:0]deg_Ro,deg_Qo;
output stop_o;//1,stop_o2;
//output [3:0]stop1,stop2,stop3;//~~~~~~~~~~~~~
//--------- poly--------------
output [7:0]Rout,Qout,Lout,Uout; 
output st_out;
/***********************************************************************/
/*各單元間WIRE*/
wire [5:0]L_dR1,L_dR2,L_dR3,
          L_dQ1,L_dQ2,L_dQ3/*synthesis keep*/;
wire [7:0]LR1,LR2,LR3,//line of Rin,Rout
           LQ1,LQ2,LQ3,
		 LL1,LL2,LL3,
		 LU1,LU2,LU3/*synthesis keep*/;
wire LS1,LS2,LS3,LS4,
     Lstop1,Lstop2,Lstop3/*synthesis keep*/;

reg [2:0]sstop1,sstop2,sstop3/*synthesis keep*/;

	   

wire [7:0]out_sel;
wire out_sel2;
 


//-----  modified to 4cells---------------------
wire [5:0]dR,dQ/*synthesis keep*/;
wire SS,St/*synthesis keep*/;
wire [7:0]RR,QQ,LL,UU/*synthesis keep*/;

reg feedback_sel;

reg [5:0]dR_reg,dQ_reg/*synthesis keep*/;
reg SS_reg,St_reg/*synthesis keep*/;
reg [7:0]Rin_reg,Qin_reg,Lin_reg,Uin_reg/*synthesis keep*/;

reg [9:0]count;  ///////////////////////////////
reg [2:0]s_reg;  ////////////////////////////


reg [5:0]DR1,DR2,DR3,DR4,DR5,DR6,DR7,DR8,
DR9,DR10,DR11,DR12,DR13,DR14,DR15,DR16,
DR17,DR18,DR19,DR20;
reg [5:0]DQ1,DQ2,DQ3,DQ4,DQ5,DQ6,DQ7,DQ8,
DQ9,DQ10,DQ11,DQ12,DQ13,DQ14,DQ15,DQ16,
DQ17,DQ18,DQ19,DQ20;
reg STOP1,STOP2,STOP3,STOP4,STOP5,STOP6,STOP7,STOP8,
STOP9,STOP10,STOP11,STOP12,STOP13,STOP14,STOP15,STOP16,
STOP17,STOP18,STOP19,STOP20;

reg [7:0]R1,R2,R3,R4,R5,R6,R7,R8,
R9,R10,R11,R12,R13,R14,R15,R16,
R17,R18,R19,R20;
reg [7:0]Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,
Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,
Q17,Q18,Q19,Q20;
reg [7:0]LLL1,LLL2,LLL3,LLL4,LLL5,LLL6,LLL7,LLL8,
LLL9,LLL10,LLL11,LLL12,LLL13,LLL14,LLL15,LLL16,
LLL17,LLL18,LLL19,LLL20;
reg [7:0]U1,U2,U3,U4,U5,U6,U7,U8,
U9,U10,U11,U12,U13,U14,U15,U16,
U17,U18,U19,U20;

reg START1,START2,START3,START4,START5,START6,START7,START8,
START9,START10,START11,START12,START13,START14,START15,START16,
START17,START18,START19,START20;


//-----  modified to 8cells---------------------
mux_6    mmm1(.a(DR20),.b(dR_reg),.sel(feedback_sel),.out(dR)); 
mux_6    mmm2(.a(DQ20),.b(dQ_reg),.sel(feedback_sel),.out(dQ)); 

mux_1   mmm3(.a(s_reg[2]),.b(St_reg),.sel(feedback_sel),.out(St));

mux_8   mmm4(.a(R20),.b(Rin_reg),.sel(feedback_sel),.out(RR));
mux_8   mmm5(.a(Q20),.b(Qin_reg),.sel(feedback_sel),.out(QQ));
mux_8   mmm6(.a(LLL20),.b(Lin_reg),.sel(feedback_sel),.out(LL));
mux_8   mmm7(.a(U20),.b(Uin_reg),.sel(feedback_sel),.out(UU));

mux_1   mmm8(.a(START20),.b(SS_reg),.sel(feedback_sel),.out(SS));
//----------------------------------------------

euclidean_cell  cell_1(.deg_Ri(dR),
                       .deg_Qi(dQ),
			        .stop_i(St),
                       .Rin(RR),
			        .Qin(QQ),
			        .Lin(LL),
			        .Uin(UU),
			        .start(SS),//input
			        .start_cnt(start_cnt),
                       .deg_Ro(L_dR1),
			        .deg_Qo(L_dQ1),
			        .stop_o(Lstop1),//------------
			        .Rout(LR1),
			        .Qout(LQ1),
			        .Lout(LL1),
			        .Uout(LU1),
			        .st_out(LS1),//output
			        .clk(clk),
				   .reset(reset));
				    
euclidean_cell  cell_2(.deg_Ri(L_dR1),
                       .deg_Qi(L_dQ1),
			        .stop_i(sstop1[2]),
                       .Rin(LR1),
			        .Qin(LQ1),
			        .Lin(LL1),
			        .Uin(LU1),
			        .start(LS1),//input
			        .start_cnt(start_cnt),
                       .deg_Ro(L_dR2),
			        .deg_Qo(L_dQ2),
			        .stop_o(Lstop2),
			        .Rout(LR2),
			        .Qout(LQ2),
			        .Lout(LL2),
			        .Uout(LU2),
			        .st_out(LS2),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_3(.deg_Ri(L_dR2),
                       .deg_Qi(L_dQ2),
			        .stop_i(sstop2[2]),
                       .Rin(LR2),
			        .Qin(LQ2),
			        .Lin(LL2),
			        .Uin(LU2),
			        .start(LS2),//input
			        .start_cnt(start_cnt),
                       .deg_Ro(L_dR3),
			        .deg_Qo(L_dQ3),
			        .stop_o(Lstop3),
			        .Rout(LR3),
			        .Qout(LQ3),
			        .Lout(LL3),
			        .Uout(LU3),
			        .st_out(LS3),//output
			        .clk(clk),
				   .reset(reset));

euclidean_cell  cell_4(.deg_Ri(L_dR3),
                       .deg_Qi(L_dQ3),
			        .stop_i(sstop3[2]),
                       .Rin(LR3),	
			        .Qin(LQ3),
			        .Lin(LL3),
			        .Uin(LU3),
			        .start(LS3),//input
			        .start_cnt(start_cnt),
                       .deg_Ro(deg_Ro),
			        .deg_Qo(deg_Qo),
			        .stop_o(stop_o),
			        .Rout(Rout),
			        .Qout(Qout),
			        .Lout(Lout),
			        .Uout(Uout),
			        .st_out(st_out),//output
			        .clk(clk),
				   .reset(reset)); 
				   	
	   			        
				 


                //-----modified to t=8----
  
                    

always@(posedge clk or negedge reset)
begin
      
	 
	 if(!reset)
	 begin
	    sstop1[0] <=#1  1'b1;
	   sstop1[1] <=#1  1'b1;
		sstop1[2] <=#1  1'b1;
	
	    sstop2[0] <=#1  1'b1;
	sstop2[1] <=#1  1'b1;
	sstop2[2] <=#1  1'b1;
	
	    sstop3[0] <=#1  1'b1;
	sstop3[1] <=#1  1'b1;
	sstop3[2] <=#1  1'b1;
	
	    


	    
	    //-----  modified to 8cells---------------------
	    feedback_sel <=#1  1'b1;
	    
	    dR_reg <=#1  6'b0;
	    dQ_reg <=#1  6'b0;
	    
	    St_reg <=#1  1'b1;
	    SS_reg <=#1  1'b1;
         Rin_reg <=#1  8'b0;
	    Qin_reg <=#1  8'b0;
	    Lin_reg <=#1  8'b0;
	    Uin_reg <=#1  8'b0;
	    
	    
	    s_reg[0] <=#1  1'b1;
		s_reg[1] <=#1  1'b1;
		s_reg[2] <=#1  1'b1;
	    
	
	    
	    DR1 <=#1  6'b0	; 	DR2 <=#1  6'b0;  DR3 <=#1  6'b0;   DR4 <=#1  6'b0; DR5 <=#1  6'b0; 
	    DR6 <=#1  6'b0	;	DR7 <=#1  6'b0;  DR8 <=#1  6'b0;   DR9 <=#1  6'b0;	DR10 <=#1  6'b0;
	    DR11 <=#1  6'b0 ;	DR12 <=#1  6'b0; DR13 <=#1  6'b0;  DR14 <=#1  6'b0; DR15 <=#1  6'b0;
	    DR16 <=#1  6'b0;    DR17 <=#1  6'b0; DR18 <=#1  6'b0;  DR19 <=#1  6'b0; DR20 <=#1  6'b0;
	    



	    DQ1 <=#1  6'b0	; 	DQ2 <=#1  6'b0;  DQ3 <=#1  6'b0;   DQ4 <=#1  6'b0;  DQ5 <=#1  6'b0; 
	    DQ6 <=#1  6'b0	;	DQ7 <=#1  6'b0;  DQ8 <=#1  6'b0;   DQ9 <=#1  6'b0;	DQ10 <=#1  6'b0;
	    DQ11 <=#1  6'b0 ;	DQ12 <=#1  6'b0; DQ13 <=#1  6'b0;  DQ14 <=#1  6'b0; DQ15 <=#1  6'b0;
	    DQ16 <=#1  6'b0;    DQ17 <=#1  6'b0; DQ18 <=#1  6'b0;  DQ19 <=#1  6'b0; DQ20 <=#1  6'b0;
	    

        STOP1 <=#1  1'b1; STOP2 <=#1  1'b1; STOP3 <=#1  1'b1;  STOP4 <=#1  1'b1; STOP5 <=#1  1'b1; 
        STOP6 <=#1  1'b1; STOP7 <=#1  1'b1; STOP8 <=#1  1'b1;  STOP9 <=#1  1'b1; STOP10 <=#1  1'b1; 
        STOP11 <=#1  1'b1; STOP12 <=#1  1'b1; STOP13 <=#1  1'b1;  STOP14 <=#1  1'b1; STOP15 <=#1  1'b1; 
        STOP16 <=#1  1'b1; STOP17 <=#1  1'b1; STOP18 <=#1  1'b1;  STOP19 <=#1  1'b1; STOP20 <=#1  1'b1; 
        




	    R1 <=#1  8'b0; 		R2 <=#1  8'b0; 	 R3 <=#1  8'b0;   R4 <=#1  8'b0;	 R5 <=#1  8'b0; 
	    R6 <=#1  8'b0;		R7 <=#1  8'b0; 	 R8 <=#1  8'b0;   R9 <=#1  8'b0;	R10 <=#1  8'b0;
	    R11 <=#1  8'b0;		R12 <=#1  8'b0;	 R13 <=#1  8'b0;  R14 <=#1  8'b0;	 R15 <=#1  8'b0;
	    R16 <=#1  8'b0;    	 R17 <=#1  8'b0; R18 <=#1  8'b0;  R19 <=#1  8'b0;	 R20 <=#1  8'b0;
	   

        Q1 <=#1  8'b0; 		Q2 <=#1  8'b0; 	 Q3 <=#1  8'b0;   Q4 <=#1  8'b0;	 Q5 <=#1  8'b0; 
	    Q6 <=#1  8'b0;		Q7 <=#1  8'b0; 	 Q8 <=#1  8'b0;   Q9 <=#1  8'b0;	Q10 <=#1  8'b0;
	    Q11 <=#1  8'b0;		Q12 <=#1  8'b0;	 Q13 <=#1  8'b0;  Q14 <=#1  8'b0;	 Q15 <=#1  8'b0;
	    Q16 <=#1  8'b0;    	Q17 <=#1  8'b0; Q18 <=#1  8'b0;  Q19 <=#1  8'b0;	 Q20 <=#1  8'b0;
	    

	    LLL1 <=#1  8'b0; 		LLL2 <=#1  8'b0; 	 LLL3 <=#1  8'b0;   LLL4 <=#1  8'b0;	 LLL5 <=#1  8'b0; 
	    LLL6 <=#1  8'b0;		LLL7 <=#1  8'b0; 	 LLL8 <=#1  8'b0;   LLL9 <=#1  8'b0;	LLL10 <=#1  8'b0;
	    LLL11 <=#1  8'b0;		LLL12 <=#1  8'b0;	 LLL13 <=#1  8'b0;  LLL14 <=#1  8'b0;	 LLL15 <=#1  8'b0;
	    LLL16 <=#1  8'b0;    	 LLL17 <=#1  8'b0; 	LLL18 <=#1  8'b0;  LLL19 <=#1  8'b0;	 LLL20 <=#1  8'b0;
	    

	    U1 <=#1  8'b0; 		U2 <=#1  8'b0; 	 U3 <=#1  8'b0;   U4 <=#1  8'b0;	 U5 <=#1  8'b0; 
	    U6 <=#1  8'b0;		U7 <=#1  8'b0; 	 U8 <=#1  8'b0;   U9 <=#1  8'b0;	U10 <=#1  8'b0;
	    U11 <=#1  8'b0;		U12 <=#1  8'b0;	 U13 <=#1  8'b0;  U14 <=#1  8'b0;	U15 <=#1  8'b0;
	    U16 <=#1  8'b0;    	 U17 <=#1  8'b0; U18 <=#1  8'b0;  U19 <=#1  8'b0;	U20 <=#1  8'b0;
	    

		START1 <=#1  1'b1; START2 <=#1  1'b1; START3 <=#1  1'b1;  START4 <=#1  1'b1; START5 <=#1  1'b1; 
        START6 <=#1  1'b1; START7 <=#1  1'b1; START8 <=#1  1'b1;  START9 <=#1  1'b1; START10 <=#1  1'b1; 
        START11 <=#1  1'b1; START12 <=#1  1'b1; START13 <=#1  1'b1;  START14 <=#1  1'b1; START15 <=#1  1'b1; 
        START16 <=#1  1'b1; START17 <=#1  1'b1; START18 <=#1  1'b1;  START19 <=#1  1'b1; START20 <=#1  1'b1; 
        
     
        

	 end
	 else if(start_cnt)
	 begin
      sstop1[0] <=#1  Lstop1;
	 sstop1[1] <=#1  sstop1[0];
	 sstop1[2] <=#1  sstop1[1];


	 sstop2[0] <=#1  Lstop2;
	 sstop2[1] <=#1  sstop2[0];
	 sstop2[2] <=#1  sstop2[1];

	 
	 sstop3[0] <=#1  Lstop3;
	 sstop3[1] <=#1  sstop3[0];
	 sstop3[2] <=#1  sstop3[1];

	
	 

   //-----modified to t=8----

		  		   
		 

//-----  modified to 4cells---------------------

      dR_reg <=#1  deg_Ri;
	 dQ_reg <=#1  deg_Qi;
	 St_reg <=#1  stop_i;
	 SS_reg <=#1  start;

	 Rin_reg <=#1  Rin;
	 Qin_reg <=#1  Qin;
	 Lin_reg <=#1  Lin;
	 Uin_reg <=#1  Uin;

	  
	  DR1 <=#1  deg_Ro;
	  DR2 <=#1  DR1;
	  DR3 <=#1  DR2;
	  DR4 <=#1  DR3;
	  DR5 <=#1  DR4;
	  DR6 <=#1  DR5;
	  DR7 <=#1  DR6;
	  DR8 <=#1  DR7;
	  DR9 <=#1  DR8;
	  DR10 <=#1  DR9;
	  DR11 <=#1  DR10;
	  DR12 <=#1  DR11;
	  DR13 <=#1  DR12;
	  DR14 <=#1  DR13;
	  DR15 <=#1  DR14;
	  DR16 <=#1  DR15;
	  DR17 <=#1  DR16;
	  DR18 <=#1  DR17;
	  DR19 <=#1  DR18;
	  DR20 <=#1  DR19;
	 

	  DQ1 <=#1  deg_Qo;
	  DQ2 <=#1  DQ1;
	  DQ3 <=#1  DQ2;
	  DQ4 <=#1  DQ3;
	  DQ5 <=#1  DQ4;
	  DQ6 <=#1  DQ5;
	  DQ7 <=#1  DQ6;
	  DQ8 <=#1  DQ7;
	  DQ9 <=#1  DQ8;
	  DQ10 <=#1  DQ9;
	  DQ11 <=#1  DQ10;
	  DQ12 <=#1  DQ11;
	  DQ13 <=#1  DQ12;
	  DQ14 <=#1  DQ13;
	  DQ15 <=#1  DQ14;
	  DQ16 <=#1  DQ15;
	  DQ17 <=#1  DQ16;
	  DQ18 <=#1  DQ17;
	  DQ19 <=#1  DQ18;
	  DQ20 <=#1  DQ19;
	 
	
	

	  STOP1 <=#1  stop_o;
	  STOP2 <=#1  STOP1;
	  STOP3 <=#1  STOP2;
	  STOP4 <=#1  STOP3;
	  STOP5 <=#1  STOP4;
	  STOP6 <=#1  STOP5;
	  STOP7 <=#1  STOP6;
	  STOP8 <=#1  STOP7;
	  STOP9 <=#1  STOP8;
	  STOP10 <=#1  STOP9;
	  STOP11 <=#1  STOP10;
	  STOP12 <=#1  STOP11;
	  STOP13 <=#1  STOP12;
	  STOP14 <=#1  STOP13;
	  STOP15 <=#1  STOP14;
	  STOP16 <=#1  STOP15;
	  STOP17 <=#1  STOP16;
	  STOP18 <=#1  STOP17;
	  STOP19 <=#1  STOP18;
	  STOP20 <=#1  STOP19;
	  


	  R1 <=#1  Rout;
	  R2 <=#1  R1;
	  R3 <=#1  R2;
	  R4 <=#1  R3;
	  R5 <=#1  R4;
	  R6 <=#1  R5;
	  R7 <=#1  R6;
	  R8 <=#1  R7;
	  R9 <=#1  R8;
	  R10 <=#1  R9;
	  R11 <=#1  R10;
	  R12 <=#1  R11;
	  R13 <=#1  R12;
	  R14 <=#1  R13;
	  R15 <=#1  R14;
	  R16 <=#1  R15;
	  R17 <=#1  R16;
	  R18 <=#1  R17;
	  R19 <=#1  R18;
	  R20 <=#1  R19;
	  


	  Q1 <=#1  Qout;
	  Q2 <=#1  Q1;
	  Q3 <=#1  Q2;
	  Q4 <=#1  Q3;
	  Q5 <=#1  Q4;
	  Q6 <=#1  Q5;
	  Q7 <=#1  Q6;
	  Q8 <=#1  Q7;
	  Q9 <=#1  Q8;
	  Q10 <=#1  Q9;
	  Q11 <=#1  Q10;
	  Q12 <=#1  Q11;
	  Q13 <=#1  Q12;
	  Q14 <=#1  Q13;
	  Q15 <=#1  Q14;
	  Q16 <=#1  Q15;
	  Q17 <=#1  Q16;
	  Q18 <=#1  Q17;
	  Q19 <=#1  Q18;
	  Q20 <=#1  Q19;
	  

	  LLL1 <=#1  Lout;
	  LLL2 <=#1  LLL1;
	  LLL3 <=#1  LLL2;
	  LLL4 <=#1  LLL3;
	  LLL5 <=#1  LLL4;
	  LLL6 <=#1  LLL5;
	  LLL7 <=#1  LLL6;
	  LLL8 <=#1  LLL7;
	  LLL9 <=#1  LLL8;
	  LLL10 <=#1  LLL9;
	  LLL11 <=#1  LLL10;
	  LLL12 <=#1  LLL11;
	  LLL13 <=#1  LLL12;
	  LLL14 <=#1  LLL13;
	  LLL15 <=#1  LLL14;
	  LLL16 <=#1  LLL15;
	  LLL17 <=#1  LLL16;
	  LLL18 <=#1  LLL17;
	  LLL19 <=#1  LLL18;
	  LLL20 <=#1  LLL19;
	  
	  U1 <=#1  Uout;
	  U2 <=#1  U1;
	  U3 <=#1  U2;
	  U4 <=#1  U3;
	  U5 <=#1  U4;
	  U6 <=#1  U5;
	  U7 <=#1  U6;
	  U8 <=#1  U7;
	  U9 <=#1  U8;
	  U10 <=#1  U9;
	  U11 <=#1  U10;
	  U12 <=#1  U11;
	  U13 <=#1  U12;
	  U14 <=#1  U13;
	  U15 <=#1  U14;
	  U16 <=#1  U15;
	  U17 <=#1  U16;
	  U18 <=#1  U17;
	  U19 <=#1  U18;
	  U20 <=#1  U19;
	  

	  START1 <=#1  st_out;
	  START2 <=#1  START1;
	  START3 <=#1  START2;
	  START4 <=#1  START3;
	  START5 <=#1  START4;
	  START6 <=#1  START5;
	  START7 <=#1  START6;
	  START8 <=#1  START7;
	  START9 <=#1  START8;
	  START10 <=#1  START9;
	  START11 <=#1  START10;
	  START12 <=#1  START11;
	  START13 <=#1  START12;
	  START14 <=#1  START13;
	  START15 <=#1  START14;
	  START16 <=#1  START15;
	  START17 <=#1  START16;
	  START18 <=#1  START17;
	  START19 <=#1  START18;
	  START20 <=#1  START19;
	  
  	  s_reg[0] <=#1  STOP20;
       s_reg[1] <=#1  s_reg[0];
       s_reg[2] <=#1  s_reg[1];

	 if(count==10'd33)
	 begin
	 feedback_sel <=#1  0;
	 end
	 
	 
	 end	 //else if
					
     
end	

always @ (posedge clk or negedge reset)
begin

	if(!reset)          count <= #1 10'b0;
	else if(start_cnt)  count <= #1 count + 10'b1;
	else		    count <= count;
end			    

endmodule
