module lab3_p4_instantiate(SW,HEX, LEDR);

	input[9:0] SW;
	output [5:0] HEX;
	output [9:0] LEDR;
	
	
	//instantiate and connect fourBit_FA
	BCD_Add instantiate_BCD_Add(.A(input_binarya), .B(input_binaryb), .cin(1'b0), .d1(output_7seg1), .d2(output_7seg2), .error(error));

endmodule