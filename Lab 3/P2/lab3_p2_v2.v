module lab3_p2_v2 (v, d1, d2);
    input [3:0] v; 
	output reg[6:0] d1, d2; 
	
	always @(v) begin
		case (v)
		4'b0000 : begin d1 = 7'b0111111; d2 = 7'b0111111; end // 00
		4'b0001 : begin d1 = 7'b0111111; d2 = 7'b0000110; end // 01
		4'b0010 : begin d1 = 7'b0111111; d2 = 7'b1011011; end // 02
		4'b0011 : begin d1 = 7'b0111111; d2 = 7'b1001111; end // 03
		4'b0100 : begin d1 = 7'b0111111; d2 = 7'b1100110; end // 04
		4'b0101 : begin d1 = 7'b0111111; d2 = 7'b1101101; end // 05
		4'b0110 : begin d1 = 7'b0111111; d2 = 7'b1111101; end // 06
		4'b0111 : begin d1 = 7'b0111111; d2 = 7'b0000111; end // 07
		4'b1000 : begin d1 = 7'b0111111; d2 = 7'b1111111; end // 08
		4'b1001 : begin d1 = 7'b0111111; d2 = 7'b1101111; end // 09
		4'b1010 : begin d1 = 7'b0000110; d2 = 7'b0111111; end // 10
		4'b1011 : begin d1 = 7'b0000110; d2 = 7'b0000110; end // 11
		4'b1100 : begin d1 = 7'b0000110; d2 = 7'b1011011; end // 12
		4'b1101 : begin d1 = 7'b0000110; d2 = 7'b1001111; end // 13
		4'b1110 : begin d1 = 7'b0000110; d2 = 7'b1100110; end // 14
		4'b1111 : begin d1 = 7'b0000110; d2 = 7'b1101101; end // 15
		default : begin d1 = 7'b0000000; d2 = 7'b0000000; end
	endcase
	end
	
endmodule;