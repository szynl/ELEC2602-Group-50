module binary_to_7Seg(binary, sevenSeg);

    input [3:0] binary;
    output reg [6:0] sevenSeg;

    always @(binary) begin
        case (binary)
            4'b0000: sevenSeg = 7'b0111111; // 0
            4'b0001: sevenSeg = 7'b0000110; // 1
            4'b0010: sevenSeg = 7'b1011011; // 2
            4'b0011: sevenSeg = 7'b1001111; // 3
            4'b0100: sevenSeg = 7'b1100110; // 4
            4'b0101: sevenSeg = 7'b1101101; // 5
            4'b0110: sevenSeg = 7'b1111101; // 6
            4'b0111: sevenSeg = 7'b0000111; // 7
            4'b1000: sevenSeg = 7'b1111111; // 8
            4'b1001: sevenSeg = 7'b1101111; // 9
            default: sevenSeg = 7'b0000000; // Don't care (all segments off)
        endcase
    end

endmodule

module dual_binary_to_7Seg(binary1, binary0, sevenSeg1, sevenSeg0);

    input [3:0] binary1, binary0;
    output [6:0] sevenSeg1, sevenSeg0;

    // Instantiate two binary_to_7Seg modules
    binary_to_7Seg display1 (
        .binary(binary1),
        .sevenSeg(sevenSeg1)
    );

    binary_to_7Seg display0 (
        .binary(binary0),
        .sevenSeg(sevenSeg0)
    );

endmodule