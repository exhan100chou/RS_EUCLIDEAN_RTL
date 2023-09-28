module memory_inverse(a,b,clk,reset);

input clk,reset;
input [7:0]a;

output [7:0]b;
reg [7:0]b;




always@(posedge clk or negedge reset)
begin
	if(!reset)
	begin

		b<=#1 8'b00000000;

	end
else if(a==8'b10001110) begin b <=#1    8'b00000010; end 
else if(a==8'b01000111) begin b <=#1    8'b00000100; end 
else if(a==8'b10101101) begin b <=#1    8'b00001000; end 
else if(a==8'b11011000) begin b <=#1    8'b00010000; end 
else if(a==8'b01101100) begin b <=#1    8'b00100000; end 
else if(a==8'b00110110) begin b <=#1    8'b01000000; end 
else if(a==8'b00011011) begin b <=#1    8'b10000000; end 
else if(a==8'b10000011) begin b <=#1    8'b00011101; end 
else if(a==8'b11001111) begin b <=#1    8'b00111010; end 
else if(a==8'b11101001) begin b <=#1    8'b01110100; end 
else if(a==8'b11111010) begin b <=#1    8'b11101000; end 
else if(a==8'b01111101) begin b <=#1    8'b11001101; end 
else if(a==8'b10110000) begin b <=#1    8'b10000111; end 
else if(a==8'b01011000) begin b <=#1    8'b00010011; end 
else if(a==8'b00101100) begin b <=#1    8'b00100110; end 
else if(a==8'b00010110) begin b <=#1    8'b01001100; end 
else if(a==8'b00001011) begin b <=#1    8'b10011000; end 
else if(a==8'b10001011) begin b <=#1    8'b00101101; end 
else if(a==8'b11001011) begin b <=#1    8'b01011010; end 
else if(a==8'b11101011) begin b <=#1    8'b10110100; end 
else if(a==8'b11111011) begin b <=#1    8'b01110101; end 
else if(a==8'b11110011) begin b <=#1    8'b11101010; end 
else if(a==8'b11110111) begin b <=#1    8'b11001001; end 
else if(a==8'b11110101) begin b <=#1    8'b10001111; end 
else if(a==8'b11110100) begin b <=#1    8'b00000011; end 
else if(a==8'b01111010) begin b <=#1    8'b00000110; end 
else if(a==8'b00111101) begin b <=#1    8'b00001100; end 
else if(a==8'b10010000) begin b <=#1    8'b00011000; end 
else if(a==8'b01001000) begin b <=#1    8'b00110000; end 
else if(a==8'b00100100) begin b <=#1    8'b01100000; end 
else if(a==8'b00010010) begin b <=#1    8'b11000000; end 
else if(a==8'b00001001) begin b <=#1    8'b10011101; end 
else if(a==8'b10001010) begin b <=#1    8'b00100111; end 
else if(a==8'b01000101) begin b <=#1    8'b01001110; end 
else if(a==8'b10101100) begin b <=#1    8'b10011100; end 
else if(a==8'b01010110) begin b <=#1    8'b00100101; end 
else if(a==8'b00101011) begin b <=#1    8'b01001010; end 
else if(a==8'b10011011) begin b <=#1    8'b10010100; end 
else if(a==8'b11000011) begin b <=#1    8'b00110101; end 
else if(a==8'b11101111) begin b <=#1    8'b01101010; end 
else if(a==8'b11111001) begin b <=#1    8'b11010100; end 
else if(a==8'b11110010) begin b <=#1    8'b10110101; end 
else if(a==8'b01111001) begin b <=#1    8'b01110111; end 
else if(a==8'b10110010) begin b <=#1    8'b11101110; end 
else if(a==8'b01011001) begin b <=#1    8'b11000001; end 
else if(a==8'b10100010) begin b <=#1    8'b10011111; end 
else if(a==8'b01010001) begin b <=#1    8'b00100011; end 
else if(a==8'b10100110) begin b <=#1    8'b01000110; end 
else if(a==8'b01010011) begin b <=#1    8'b10001100; end 
else if(a==8'b10100111) begin b <=#1    8'b00000101; end 
else if(a==8'b11011101) begin b <=#1    8'b00001010; end 
else if(a==8'b11100000) begin b <=#1    8'b00010100; end 
else if(a==8'b01110000) begin b <=#1    8'b00101000; end 
else if(a==8'b00111000) begin b <=#1    8'b01010000; end 
else if(a==8'b00011100) begin b <=#1    8'b10100000; end 
else if(a==8'b00001110) begin b <=#1    8'b01011101; end 
else if(a==8'b00000111) begin b <=#1    8'b10111010; end 
else if(a==8'b10001101) begin b <=#1    8'b01101001; end 
else if(a==8'b11001000) begin b <=#1    8'b11010010; end 
else if(a==8'b01100100) begin b <=#1    8'b10111001; end 
else if(a==8'b00110010) begin b <=#1    8'b01101111; end 
else if(a==8'b00011001) begin b <=#1    8'b11011110; end 
else if(a==8'b10000010) begin b <=#1    8'b10100001; end 
else if(a==8'b01000001) begin b <=#1    8'b01011111; end 
else if(a==8'b10101110) begin b <=#1    8'b10111110; end 
else if(a==8'b01010111) begin b <=#1    8'b01100001; end 
else if(a==8'b10100101) begin b <=#1    8'b11000010; end 
else if(a==8'b11011100) begin b <=#1    8'b10011001; end 
else if(a==8'b01101110) begin b <=#1    8'b00101111; end 
else if(a==8'b00110111) begin b <=#1    8'b01011110; end 
else if(a==8'b10010101) begin b <=#1    8'b10111100; end 
else if(a==8'b11000100) begin b <=#1    8'b01100101; end 
else if(a==8'b01100010) begin b <=#1    8'b11001010; end 
else if(a==8'b00110001) begin b <=#1    8'b10001001; end 
else if(a==8'b10010110) begin b <=#1    8'b00001111; end 
else if(a==8'b01001011) begin b <=#1    8'b00011110; end 
else if(a==8'b10101011) begin b <=#1    8'b00111100; end 
else if(a==8'b11011011) begin b <=#1    8'b01111000; end 
else if(a==8'b11100011) begin b <=#1    8'b11110000; end 
else if(a==8'b11111111) begin b <=#1    8'b11111101; end 
else if(a==8'b11110001) begin b <=#1    8'b11100111; end 
else if(a==8'b11110110) begin b <=#1    8'b11010011; end 
else if(a==8'b01111011) begin b <=#1    8'b10111011; end 
else if(a==8'b10110011) begin b <=#1    8'b01101011; end 
else if(a==8'b11010111) begin b <=#1    8'b11010110; end 
else if(a==8'b11100101) begin b <=#1    8'b10110001; end 
else if(a==8'b11111100) begin b <=#1    8'b01111111; end 
else if(a==8'b01111110) begin b <=#1    8'b11111110; end 
else if(a==8'b00111111) begin b <=#1    8'b11100001; end 
else if(a==8'b10010001) begin b <=#1    8'b11011111; end 
else if(a==8'b11000110) begin b <=#1    8'b10100011; end 
else if(a==8'b01100011) begin b <=#1    8'b01011011; end 
else if(a==8'b10111111) begin b <=#1    8'b10110110; end 
else if(a==8'b11010001) begin b <=#1    8'b01110001; end 
else if(a==8'b11100110) begin b <=#1    8'b11100010; end 
else if(a==8'b01110011) begin b <=#1    8'b11011001; end 
else if(a==8'b10110111) begin b <=#1    8'b10101111; end 
else if(a==8'b11010101) begin b <=#1    8'b01000011; end 
else if(a==8'b11100100) begin b <=#1    8'b10000110; end 
else if(a==8'b01110010) begin b <=#1    8'b00010001; end 
else if(a==8'b00111001) begin b <=#1    8'b00100010; end 
else if(a==8'b10010010) begin b <=#1    8'b01000100; end 
else if(a==8'b01001001) begin b <=#1    8'b10001000; end 
else if(a==8'b10101010) begin b <=#1    8'b00001101; end 
else if(a==8'b01010101) begin b <=#1    8'b00011010; end 
else if(a==8'b10100100) begin b <=#1    8'b00110100; end 
else if(a==8'b01010010) begin b <=#1    8'b01101000; end 
else if(a==8'b00101001) begin b <=#1    8'b11010000; end 
else if(a==8'b10011010) begin b <=#1    8'b10111101; end 
else if(a==8'b01001101) begin b <=#1    8'b01100111; end 
else if(a==8'b10101000) begin b <=#1    8'b11001110; end 
else if(a==8'b01010100) begin b <=#1    8'b10000001; end 
else if(a==8'b00101010) begin b <=#1    8'b00011111; end 
else if(a==8'b00010101) begin b <=#1    8'b00111110; end 
else if(a==8'b10000100) begin b <=#1    8'b01111100; end 
else if(a==8'b01000010) begin b <=#1    8'b11111000; end 
else if(a==8'b00100001) begin b <=#1    8'b11101101; end 
else if(a==8'b10011110) begin b <=#1    8'b11000111; end 
else if(a==8'b01001111) begin b <=#1    8'b10010011; end 
else if(a==8'b10101001) begin b <=#1    8'b00111011; end 
else if(a==8'b11011010) begin b <=#1    8'b01110110; end 
else if(a==8'b01101101) begin b <=#1    8'b11101100; end 
else if(a==8'b10111000) begin b <=#1    8'b11000101; end 
else if(a==8'b01011100) begin b <=#1    8'b10010111; end 
else if(a==8'b00101110) begin b <=#1    8'b00110011; end 
else if(a==8'b00010111) begin b <=#1    8'b01100110; end 
else if(a==8'b10000101) begin b <=#1    8'b11001100; end 
else if(a==8'b11001100) begin b <=#1    8'b10000101; end 
else if(a==8'b01100110) begin b <=#1    8'b00010111; end 
else if(a==8'b00110011) begin b <=#1    8'b00101110; end 
else if(a==8'b10010111) begin b <=#1    8'b01011100; end 
else if(a==8'b11000101) begin b <=#1    8'b10111000; end 
else if(a==8'b11101100) begin b <=#1    8'b01101101; end 
else if(a==8'b01110110) begin b <=#1    8'b11011010; end 
else if(a==8'b00111011) begin b <=#1    8'b10101001; end 
else if(a==8'b10010011) begin b <=#1    8'b01001111; end 
else if(a==8'b11000111) begin b <=#1    8'b10011110; end 
else if(a==8'b11101101) begin b <=#1    8'b00100001; end 
else if(a==8'b11111000) begin b <=#1    8'b01000010; end 
else if(a==8'b01111100) begin b <=#1    8'b10000100; end 
else if(a==8'b00111110) begin b <=#1    8'b00010101; end 
else if(a==8'b00011111) begin b <=#1    8'b00101010; end 
else if(a==8'b10000001) begin b <=#1    8'b01010100; end 
else if(a==8'b11001110) begin b <=#1    8'b10101000; end 
else if(a==8'b01100111) begin b <=#1    8'b01001101; end 
else if(a==8'b10111101) begin b <=#1    8'b10011010; end 
else if(a==8'b11010000) begin b <=#1    8'b00101001; end 
else if(a==8'b01101000) begin b <=#1    8'b01010010; end 
else if(a==8'b00110100) begin b <=#1    8'b10100100; end 
else if(a==8'b00011010) begin b <=#1    8'b01010101; end 
else if(a==8'b00001101) begin b <=#1    8'b10101010; end 
else if(a==8'b10001000) begin b <=#1    8'b01001001; end 
else if(a==8'b01000100) begin b <=#1    8'b10010010; end 
else if(a==8'b00100010) begin b <=#1    8'b00111001; end 
else if(a==8'b00010001) begin b <=#1    8'b01110010; end 
else if(a==8'b10000110) begin b <=#1    8'b11100100; end 
else if(a==8'b01000011) begin b <=#1    8'b11010101; end 
else if(a==8'b10101111) begin b <=#1    8'b10110111; end 
else if(a==8'b11011001) begin b <=#1    8'b01110011; end 
else if(a==8'b11100010) begin b <=#1    8'b11100110; end 
else if(a==8'b01110001) begin b <=#1    8'b11010001; end 
else if(a==8'b10110110) begin b <=#1    8'b10111111; end 
else if(a==8'b01011011) begin b <=#1    8'b01100011; end 
else if(a==8'b10100011) begin b <=#1    8'b11000110; end 
else if(a==8'b11011111) begin b <=#1    8'b10010001; end 
else if(a==8'b11100001) begin b <=#1    8'b00111111; end 
else if(a==8'b11111110) begin b <=#1    8'b01111110; end 
else if(a==8'b01111111) begin b <=#1    8'b11111100; end 
else if(a==8'b10110001) begin b <=#1    8'b11100101; end 
else if(a==8'b11010110) begin b <=#1    8'b11010111; end 
else if(a==8'b01101011) begin b <=#1    8'b10110011; end 
else if(a==8'b10111011) begin b <=#1    8'b01111011; end 
else if(a==8'b11010011) begin b <=#1    8'b11110110; end 
else if(a==8'b11100111) begin b <=#1    8'b11110001; end 
else if(a==8'b11111101) begin b <=#1    8'b11111111; end 
else if(a==8'b11110000) begin b <=#1    8'b11100011; end 
else if(a==8'b01111000) begin b <=#1    8'b11011011; end 
else if(a==8'b00111100) begin b <=#1    8'b10101011; end 
else if(a==8'b00011110) begin b <=#1    8'b01001011; end 
else if(a==8'b00001111) begin b <=#1    8'b10010110; end 
else if(a==8'b10001001) begin b <=#1    8'b00110001; end 
else if(a==8'b11001010) begin b <=#1    8'b01100010; end 
else if(a==8'b01100101) begin b <=#1    8'b11000100; end 
else if(a==8'b10111100) begin b <=#1    8'b10010101; end 
else if(a==8'b01011110) begin b <=#1    8'b00110111; end 
else if(a==8'b00101111) begin b <=#1    8'b01101110; end 
else if(a==8'b10011001) begin b <=#1    8'b11011100; end 
else if(a==8'b11000010) begin b <=#1    8'b10100101; end 
else if(a==8'b01100001) begin b <=#1    8'b01010111; end 
else if(a==8'b10111110) begin b <=#1    8'b10101110; end 
else if(a==8'b01011111) begin b <=#1    8'b01000001; end 
else if(a==8'b10100001) begin b <=#1    8'b10000010; end 
else if(a==8'b11011110) begin b <=#1    8'b00011001; end 
else if(a==8'b01101111) begin b <=#1    8'b00110010; end 
else if(a==8'b10111001) begin b <=#1    8'b01100100; end 
else if(a==8'b00001010) begin b <=#1    8'b11001000; end 
else if(a==8'b11010010) begin b <=#1    8'b10001101; end 
else if(a==8'b01101001) begin b <=#1    8'b00000111; end 
else if(a==8'b10111010) begin b <=#1    8'b00001110; end 
else if(a==8'b01011101) begin b <=#1    8'b00011100; end 
else if(a==8'b10100000) begin b <=#1    8'b00111000; end 
else if(a==8'b01010000) begin b <=#1    8'b01110000; end 
else if(a==8'b00101000) begin b <=#1    8'b11100000; end 
else if(a==8'b00010100) begin b <=#1    8'b11011101; end 
else if(a==8'b00000101) begin b <=#1    8'b10100111; end 
else if(a==8'b10001100) begin b <=#1    8'b01010011; end 
else if(a==8'b01000110) begin b <=#1    8'b10100110; end 
else if(a==8'b00100011) begin b <=#1    8'b01010001; end 
else if(a==8'b10011111) begin b <=#1    8'b10100010; end 
else if(a==8'b11000001) begin b <=#1    8'b01011001; end 
else if(a==8'b11101110) begin b <=#1    8'b10110010; end 
else if(a==8'b01110111) begin b <=#1    8'b01111001; end 
else if(a==8'b10110101) begin b <=#1    8'b11110010; end 
else if(a==8'b11010100) begin b <=#1    8'b11111001; end 
else if(a==8'b01101010) begin b <=#1    8'b11101111; end 
else if(a==8'b00110101) begin b <=#1    8'b11000011; end 
else if(a==8'b10010100) begin b <=#1    8'b10011011; end 
else if(a==8'b01001010) begin b <=#1    8'b00101011; end 
else if(a==8'b00100101) begin b <=#1    8'b01010110; end 
else if(a==8'b10011100) begin b <=#1    8'b10101100; end 
else if(a==8'b01001110) begin b <=#1    8'b01000101; end 
else if(a==8'b00100111) begin b <=#1    8'b10001010; end 
else if(a==8'b10011101) begin b <=#1    8'b00001001; end 
else if(a==8'b11000000) begin b <=#1    8'b00010010; end 
else if(a==8'b01100000) begin b <=#1    8'b00100100; end 
else if(a==8'b00110000) begin b <=#1    8'b01001000; end 
else if(a==8'b00011000) begin b <=#1    8'b10010000; end 
else if(a==8'b00001100) begin b <=#1    8'b00111101; end 
else if(a==8'b00000110) begin b <=#1    8'b01111010; end 
else if(a==8'b00000011) begin b <=#1    8'b11110100; end 
else if(a==8'b10001111) begin b <=#1    8'b11110101; end 
else if(a==8'b11001001) begin b <=#1    8'b11110111; end 
else if(a==8'b11101010) begin b <=#1    8'b11110011; end 
else if(a==8'b01110101) begin b <=#1    8'b11111011; end 
else if(a==8'b10110100) begin b <=#1    8'b11101011; end 
else if(a==8'b01011010) begin b <=#1    8'b11001011; end 
else if(a==8'b00101101) begin b <=#1    8'b10001011; end 
else if(a==8'b10011000) begin b <=#1    8'b00001011; end 
else if(a==8'b01001100) begin b <=#1    8'b00010110; end 
else if(a==8'b00100110) begin b <=#1    8'b00101100; end 
else if(a==8'b00010011) begin b <=#1    8'b01011000; end 
else if(a==8'b10000111) begin b <=#1    8'b10110000; end 
else if(a==8'b11001101) begin b <=#1    8'b01111101; end 
else if(a==8'b11101000) begin b <=#1    8'b11111010; end 
else if(a==8'b01110100) begin b <=#1    8'b11101001; end 
else if(a==8'b00111010) begin b <=#1    8'b11001111; end 
else if(a==8'b00011101) begin b <=#1    8'b10000011; end 
else if(a==8'b10000000) begin b <=#1    8'b00011011; end 
else if(a==8'b01000000) begin b <=#1    8'b00110110; end 
else if(a==8'b00100000) begin b <=#1    8'b01101100; end 
else if(a==8'b00010000) begin b <=#1    8'b11011000; end 
else if(a==8'b00001000) begin b <=#1    8'b10101101; end 
else if(a==8'b00000100) begin b <=#1    8'b01000111; end 
else if(a==8'b00000010) begin b <=#1    8'b10001110; end 
else if(a==8'b00000001) begin b <=#1    8'b00000001; end 
/*	else if(a==8'b11111111)
	begin
			b<=#1 8'b10101010;
	end
	else
	begin
			b<=#1 8'b00000000;
	end
*/
	
end
endmodule