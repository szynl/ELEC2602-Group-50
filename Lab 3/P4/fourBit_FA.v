module fourBit_FA(a,b,cin,cout,s);
	// ripple carry adder
	input [3:0] a,b;
	input cin;
	output cout;
	output [3:0] s;
	wire carry1 , carry2, carry3;

	FA fa0(.a(a[0]), .b(b[0]), .cin(cin), .cout(carry1), .s(s[0]));
	FA fa1(.a(a[1]), .b(b[1]), .cin(carry1), .cout(carry2), .s(s[1]));
	FA fa2(.a(a[2]), .b(b[2]), .cin(carry2), .cout(carry3), .s(s[2]));
	FA fa3(.a(a[3]), .b(b[3]), .cin(carry3), .cout(cout), .s(s[3]));

endmodule