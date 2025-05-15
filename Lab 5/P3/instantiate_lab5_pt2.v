module instantiate_lab5_pt2(SW,LEDR,CLOCK_50,HEX0,HEX1,HEX2,HEX3);

	input [9:0] SW;
	input CLOCK_50;
	output [6:0]HEX0, HEX1,HEX2,HEX3;
	output[9:0] LEDR;
	wire reach;
	wire [25:0] Qq;
	wire[15:0]Qqq;
	
	firstcounter mod50million(.Clkin(CLOCK_50),.Q(Qq), .clear(SW[0]),.reached(reach));
	counter mod50millionreached(.Clkin(CLOCK_50), .clear(SW[0]),.Q(Qqq), .Din(reach), .num0(HEX0),.num1(HEX1),.num2(HEX2),.num3(HEX3));
	
	
	endmodule