module BCD_Add(
    input [3:0] A, B,
    input cin,
    output [6:0] d1, d2, // Outputs for 7-segment display
    output error          // Error signal
);

    wire [3:0] sum;
    wire [3:0] corrected_sum;
    wire carry_out;

    // Step 1: Add A, B, and cin using a 4-bit full adder
    fourBit_FA adder (
        .a(A),
        .b(B),
        .cin(cin),
        .s(sum[3:0]),
        .cout(carry_out)
    );

    // Step 2: Check if correction is needed (sum > 9)

    // Step 4: Use lab3_p2_v2 to display the result
    lab3_p2_v2 display (
        .v({sum}),
        .d1(d1),
        .d2(d2)
    );

    // Step 5: Error check for inputs greater than 7
    assign error = (A > 4'b0111) || (B > 4'b0111);

endmodule