module decoder_7seg(code, decoded_output);

    input [1:0] code;
    output reg [6:0] decoded_output;

    always @(code) begin
        case (code)
            2'b00: decoded_output = 7'b0000111; // C(1:0) = 00
            2'b01: decoded_output = 7'b1110000; // C(1:0) = 01
            2'b10: decoded_output = 7'b0011100; // C(1:0) = 10
            2'b11: decoded_output = 7'b1100011; // C(1:0) = 11
            default: decoded_output = 7'b0000000; // Default case
        endcase
    end

endmodule