module instantiate_lab4_part1(SW,LEDR);
 
	input[9:0] SW ;
	output [9:0] LEDR;
	gated_RS instantiate_gated_RS (
	.clk(), 
	.R(), 
	.S(), 
	.Q(), 
	.Qnot());
	
endmodule