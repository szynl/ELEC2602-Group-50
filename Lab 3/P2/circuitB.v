module circuitB (z, d1);
    input z;
	output reg[6:0] d1; 
	
	always @(z)
	begin
	  if (z == 1'b0)
		d1 = 7'b0111111;
	  else
		d1 = 7'b0000110;
	end
endmodule;