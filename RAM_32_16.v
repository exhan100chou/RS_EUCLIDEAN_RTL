module RAM_32_16(clk,ren,wen,addr,Din,Dout);

parameter Words=32;
input clk,ren,wen;
input[4:0]addr;
input[15:0]Din;

output[15:0]Dout;
reg [15:0] RAM [Words-1:0];
reg [15:0] Dout;

always@(posedge clk)
begin
	if(ren)//load
	begin
		Dout<=#1 RAM[addr];
	end
	else
	begin
		Dout<=#1 16'bz;
	end

end

always@(posedge clk)
begin
	
 if(wen)
	begin
	RAM[addr]<=#1 Din;
	end	
	
end


endmodule

