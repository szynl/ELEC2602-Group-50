module FA(a,b,cin,cout,s);
	input a,b,cin;
	output cout,s; 
	wire [1:0] sum;
	
	assign sum = a + b + cin;
	assign cout = sum[1];
	assign s = sum[0];

endmodule