module two_bit_4to1muxV2 (s,u,v,w,x,m);
 
	input[1:0] s;
	input[1:0] u,v,w,x;
	output reg[1:0] m;
	
	reg[1:0] t1, t2;
	
	//complete always blocks (look at one_bit_4to1muxV2.v for hints. Should look the same)
	always @(u,v,s[0]) begin
		if (s[0] == 1'b0) begin
			t1 = u;
			t2 = w;
		end else begin
			t1 = v;
			t2 = x;
		end
	end
 
	always @(t1,t2,s[1]) begin
		if (s[1] == 1'b0)
			m = t1;
		else
			m = t2;
	end
endmodule
