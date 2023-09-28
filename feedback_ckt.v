module feedback_ckt(Din,start,Qout,clk,reset);
input [7:0]Din/*synthesis keep*/;
input start,clk,reset;

output[7:0]Qout/*synthesis keep*/;
//wire [7:0]Qout;
  

reg [7:0]D;

wire [7:0]feedback;
wire [7:0]out;

mux_8 mux(.a(Din),.b(feedback),.sel(start),.out(out));
assign feedback=Qout;
assign Qout=D;

always@(posedge clk or negedge reset)
begin
	 
	 //Qout <=#1 D; 
	 if(!reset)
	 begin
	     D <=#1 0;
	 end
	 else 
	 begin 
	    D <=#1 out;
	 end 
end




endmodule
