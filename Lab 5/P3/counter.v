module counter (Clkin, clear,Q, Din, num0, num1, num2, num3);
    input Clkin, clear, Din;
    output reg [15:0] Q;
	 output [6:0] num0,num1,num2,num3;

    always @(posedge Clkin or posedge clear) begin
        if (clear) begin
            Q <= 16'b0; // Reset the counter to 0
        end else if (Din) begin
            Q <= Q + 1; // Increment the counter
        end
    end
	 
	 binary_to_7Seg pact1 (Q[3:0],num0);
	 binary_to_7Seg pact2 (Q[7:4],num1);
	 binary_to_7Seg pact3 (Q[11:8],num2);
	 binary_to_7Seg pact4 (Q[15:12],num3);
endmodule