module counter (Clkin, clear, Din, Q);
    input Clkin, clear, Din;
    output reg [15:0] Q;

    always @(posedge Clkin or posedge clear) begin
        if (clear) begin
            Q <= 16'b0; // Reset the counter to 0
        end else if (Din) begin
            Q <= Q + 1; // Increment the counter
        end
    end
endmodule