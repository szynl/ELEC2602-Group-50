module lab3_p2_v1 (v, d1, d2);
    input [3:0] v; 
	output [6:0] d1, d2; 
	
	//Add any required intermediate wires here
	wire [3:0] a, b;
	wire z;
	
	circuitA inst_circA(.v(v),.A(a));
	comparator inst_comp(.v(v),.z(z));
	circuitB inst_circB(.z(z),.d1(d1));
	four_bit_2to1mux inst_mux(.sel(z),.a(v),.b(a),.chosen(b));
	binary_to_7Seg instantiate_bto7seg(.binary(b),.sevenSeg(d2));
	
endmodule;