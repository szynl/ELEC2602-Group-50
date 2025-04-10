module lab3_p3_instantiate(SW,LEDR);

	input[9:0] SW;
	output [9:0] LEDR;
	wire zero=1'b0;
	
	
	//instantiate and connect fourBit_FA
	fourBit_FA x(.a(SW[4:1]),.b(SW[8:5]),.cin(zero),.cout(LEDR[4]),.s(LEDR[3:0]));
endmodule
