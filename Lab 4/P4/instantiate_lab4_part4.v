module instantiate_lab4_part4(SW,LEDR);
 
	input[9:0] SW ;
	output [9:0] LEDR;
	wire output1, output2, output3;

	// instantiate and connect all 3 flip flops
	// Use same inputs (same switches for D, clk to all instances)
	// Use 3 separate LED outputs
	
	dff_pos instantiate_dff_pos (SW[0], SW[1], LEDR[0], output1);

	dff_neg instantiate_dff_neg (SW[0], SW[1], LEDR[1], output2);
	
	d_latch instantiate_d_latch (SW[0], SW[1], LEDR[2], output3);
	
endmodule