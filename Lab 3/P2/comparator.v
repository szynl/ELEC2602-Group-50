module comparator (v, z);
	input [3:0] v; 	
	output reg z; 
	// if v is >9, z = 1, else z = 0
	always @(v)
	begin
	  if (v > 4'b1001) // Check if v is greater than 9
		z = 1;         // Set z to 1 if condition is true
	  else
		z = 0;         // Set z to 0 otherwise
	end
endmodule;
