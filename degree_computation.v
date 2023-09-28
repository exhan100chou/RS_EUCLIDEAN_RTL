module degree_computation(deg_Ri,deg_Qi,stop_i,d1out,start,//input
                          deg_Ro,deg_Qo,stop_o,sw,//output
					 clk,reset);
					 

input [5:0]deg_Ri,deg_Qi;
input [7:0]d1out;
input stop_i,clk,start,reset;

output [5:0]deg_Ro,deg_Qo;
output stop_o,sw;
/*output [5:0]//DR2,DQ2,addr_signal,addq_signal;//,//~~~~
					 mr_signal,mq_signal,r2mux_signal,q2mux_signal;//~~~~~~~~~~~~~~
					    */
   
					    
					    
wire out,j1_signal,j2_signal,z_lead,stop1_signal,stop2_signal;
wire [5:0]rmux_signal,qmux_signal,
      addr_signal,addq_signal,
	 mr_signal,mq_signal,
	 r2mux_signal,q2mux_signal;
wire [7:0]dmux_signal;


reg shift_reg,sw_reg,start_reg;
reg [5:0]DR1,DR2,DR3,DQ1,DQ2,DQ3;


//-----------------------------------------------------------------

assign out=(deg_Ri<deg_Qi); //|| deg_Ri==deg_Qi);
assign sw=shift_reg;

mux_6 mdeg1(.a(DR1),.b(DQ1),.sel(sw_reg),.out(rmux_signal));
mux_6 mdeg2(.a(DQ1),.b(DR1),.sel(sw_reg),.out(qmux_signal));

assign addr_signal=DR2-6'd1;
assign addq_signal=DQ2-6'd1;
mux_6 mdeg3(.a(addr_signal),.b(DR2),.sel(z_lead),.out(mr_signal));
mux_6 mdeg4(.a(DQ2),.b(addq_signal),.sel(z_lead),.out(mq_signal));

mux_6 mdeg5(.a(mr_signal),.b(DR2),.sel(stop_i),.out(r2mux_signal));
mux_6 mdeg6(.a(mq_signal),.b(DQ2),.sel(stop_i),.out(q2mux_signal));

assign deg_Ro=DR3;
assign deg_Qo=DQ3;

assign j1_signal=(mr_signal<16);
assign j2_signal=(mq_signal<16);
assign stop1_signal=(j1_signal || j2_signal);//or
assign stop2_signal=start_reg;
assign stop_o=stop1_signal && stop2_signal;

//--- verify coeff of Q==0 --------

mux_8 mdeg7(.a(8'd1),.b(d1out),.sel(start_reg),.out(dmux_signal));
assign z_lead=(dmux_signal==0);


always@(posedge clk or negedge reset)
begin
       

	   
	   if(!reset)
	   begin
	    shift_reg <=#1 0;
		  sw_reg <=#1 0;
		  start_reg <=#1 1;
		  DR1 <=#1 0;
		  DR2 <=#1 0;
		  DR3 <=#1 0;
		  DQ1 <=#1 0;
		  DQ2 <=#1 0;
		  DQ3 <=#1 0;
	   end
	   else 
	   begin
	         shift_reg <=#1 out;
	         sw_reg <=#1 out;
	         DR1 <=#1 deg_Ri;
	         DQ1 <=#1 deg_Qi;

           DR2 <=#1 rmux_signal;
	         DQ2 <=#1 qmux_signal;

	         DR3 <=#1 r2mux_signal;
	         DQ3 <=#1 q2mux_signal;
		    //--- verify coeff of Q==0 --------
	         start_reg <=#1 start;
	   end

end
endmodule
