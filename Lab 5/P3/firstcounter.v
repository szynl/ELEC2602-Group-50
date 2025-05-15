module firstcounter (Clkin, Q, clear, reached);
    input Clkin, clear;
	 output reg reached;
    output reg [25:0] Q;

    always @(posedge Clkin or posedge clear) begin
        if (clear) begin
            Q <= 26'b0; // Reset the counter to 0
				reached<=1'b0;
        end else if (Q==(50000000-1)) begin
					Q<=26'b0;
					reached <=1'b1;
				end else begin
            Q <= Q + 1; // Increment the counter
				reached <=1'b0;
				end
					
        end
	 
endmodule