module euclidean_cell(deg_Ri,deg_Qi,stop_i,
                      Rin,Qin,Lin,Uin,start,start_cnt,//input
                      deg_Ro,deg_Qo,stop_o,
				  Rout,Qout,Lout,Uout,st_out,//output
				  clk,reset);

input clk,reset;
input stop_i;
input start_cnt;

//---------degree------------
input [5:0]deg_Ri,deg_Qi;

//--------- poly--------------
input [7:0]Rin,Qin,Lin,Uin;
input start;

//---------degree------------
output [5:0]deg_Ro,deg_Qo;
output stop_o;

//--------- poly--------------
output [7:0]Rout,Qout,Lout,Uout;
output st_out;

//parameter DELAY =1;    
wire st_out;
wire [7:0]Rout,Qout,Lout,Uout/*synthesis keep*/;
wire [7:0]r_mux,q_mux,l_mux/*L(line)_mux*/,u_mux/*synthesis keep*/;
wire [7:0]d1out,d2out,d3out,d4out/*synthesis keep*/;
wire [7:0]m1out,m2out,m3out,m4out/*synthesis keep*/;
wire [7:0]add1out,add2out/*synthesis keep*/;
wire stmp,sw/*synthesis keep*/;
wire keep;
wire [7:0]tempr,tempq,templ,tempu;


reg [7:0]R1,R2,Q1,Q2,Q3,L1,L2,U1,U2,U3;
	
reg S1,S2,S3/*synthesis keep*/;
reg [7:0]o1,o2;
reg [7:0]rr1,rr2,rr3;
reg [7:0]qq1,qq2,qq3;
reg [7:0]ll1,ll2,ll3;
reg [7:0]uu1,uu2,uu3;

//******************* degree computation	**********************
   
degree_computation degree1(.deg_Ri(deg_Ri),.deg_Qi(deg_Qi),.stop_i(stop_i),
                           .d1out(d1out),.start(start),//input
                           .deg_Ro(deg_Ro),.deg_Qo(deg_Qo),.stop_o(stop_o),
				       .sw(sw),//output
				       .clk(clk),.reset(reset));


//******************** polynomial arithmetic **********************



mux_8 m1(.a(R1),.b(Q1),.sel(sw),.out(r_mux));
mux_8 m2(.a(Q1),.b(R1),.sel(sw),.out(q_mux));
mux_8 m3(.a(L1),.b(U1),.sel(sw),.out(l_mux));
mux_8 m4(.a(U1),.b(L1),.sel(sw),.out(u_mux));


assign st_out=S3;//S4;//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

assign stmp=S1;

feedback_ckt D1(.Din(q_mux),.start(stmp),.Qout(d1out),.clk(clk),.reset(reset));
feedback_ckt D2(.Din(r_mux),.start(stmp),.Qout(d2out),.clk(clk),.reset(reset));
feedback_ckt D3(.Din(q_mux),.start(stmp),.Qout(d3out),.clk(clk),.reset(reset));
feedback_ckt D4(.Din(r_mux),.start(stmp),.Qout(d4out),.clk(clk),.reset(reset));



//----block 3--------
multiplier mx1(.a(R2),.b(d1out),.c(m1out));
multiplier mx2(.a(d2out),.b(Q2),.c(m2out));
multiplier mx3(.a(L2),.b(d3out),.c(m3out));
multiplier mx4(.a(d4out),.b(U2),.c(m4out));

assign add1out=m1out^m2out;
assign add2out=m3out^m4out;

assign keep=(d1out==0);

mux_8 m5(.a(add1out),.b(o1),.sel(keep),.out(tempr));
mux_8 m6(.a(Q3),.b(Q2),.sel(keep),.out(tempq));
mux_8 m7(.a(add2out),.b(o2),.sel(keep),.out(templ));
mux_8 m8(.a(U3),.b(U2),.sel(keep),.out(tempu));


mux_8 m9(.a(tempr),.b(rr3),.sel(stop_i),.out(Rout));
mux_8 m10(.a(tempq),.b(qq3),.sel(stop_i),.out(Qout));
mux_8 m11(.a(templ),.b(ll3),.sel(stop_i),.out(Lout));
mux_8 m12(.a(tempu),.b(uu3),.sel(stop_i),.out(Uout));


//----------------
always@(posedge  clk or negedge reset)
begin
     
	if(!reset)
	begin
	     R1 <=#1 8'b0;
		R2 <=#1 8'b0;
          Q1 <=#1 8'b0;
		Q2 <=#1 8'b0;
		Q3 <=#1 8'b0;
		L1 <=#1 8'b0;
		L2 <=#1 8'b0;
		U1 <=#1 8'b0;
		U2 <=#1 8'b0;
		U3 <=#1 8'b0;
		S1 <=#1 1'b1;
		S2 <=#1 1'b1;
		S3 <=#1 1'b1;
		o1 <=#1 8'b0;
		o2 <=#1 8'b0;
		
		
		
		
		//---STOP_I ±M¥Î
		rr1 <=#1 8'b0;
		rr2 <=#1 8'b0;
		rr3 <=#1 8'b0;
		qq1 <=#1 8'b0;
		qq2 <=#1 8'b0;
		qq3 <=#1 8'b0;
		ll1 <=#1 8'b0;
		ll2 <=#1 8'b0;
		ll3 <=#1 8'b0;
		uu1 <=#1 8'b0;
		uu2 <=#1 8'b0;
		uu3 <=#1 8'b0;
		
	
	end
	
	else if(start_cnt)
	begin
	    //--- block1 ------
	R1 <=#1 Rin;
	Q1 <=#1 Qin;
	L1 <=#1 Lin;
	U1 <=#1 Uin;
	
	
	rr1 <=#1 Rin;
	qq1 <=#1 Qin;
	ll1 <=#1 Lin;
	uu1 <=#1 Uin;
	//--- block 2-------
     R2 <=#1 r_mux;
	Q2 <=#1 q_mux;
	L2 <=#1 l_mux;
	U2 <=#1 u_mux;
	//----block3--------
     Q3 <=#1 Q2;
	U3 <=#1 U2;
	o1<=#1 R2;
	o2<=#1 L2;

	//--- block 4 ------
	S1 <=#1 start;
	S2 <=#1 S1;
	S3 <=#1 S2;
	
	
	rr2 <=#1 rr1;
	rr3 <=#1 rr2;
	qq2 <=#1 qq1;
	qq3 <=#1 qq2;
	ll2 <=#1 ll1;
	ll3 <=#1 ll2;
	uu2 <=#1 uu1;
	uu3 <=#1 uu2;
	
	

	end


end



endmodule




