`timescale 1ns / 1ps
module lab3_p3_TB;

    reg [3:0] count;
    reg [3:0] a, b;
    reg cin;
    wire cout;
    wire [3:0] s;

    // Instantiate and connect fourBit_FA
    fourBit_FA fourBit_FA0 (
        .a(a),
        .b(b),
        .cin(cin),
        .cout(cout),
        .s(s)
    );

    initial begin 
        count = 4'b0000;
    end

    always begin
        #50
        count = count + 4'b0001;
    end

    always @(count) begin
        case (count)
            4'b0000 : begin a = 4'b0000; b = 4'b0000; cin = 1'b0; end
            4'b0001 : begin a = 4'b0000; b = 4'b0001; cin = 1'b0; end
            4'b0010 : begin a = 4'b0001; b = 4'b0001; cin = 1'b0; end
            4'b0011 : begin a = 4'b0010; b = 4'b0010; cin = 1'b0; end
            4'b0100 : begin a = 4'b0011; b = 4'b0011; cin = 1'b0; end
            4'b0101 : begin a = 4'b0100; b = 4'b0100; cin = 1'b0; end
            4'b0110 : begin a = 4'b0101; b = 4'b0101; cin = 1'b0; end
            4'b0111 : begin a = 4'b0110; b = 4'b0110; cin = 1'b0; end
            default : begin a = 4'b0000; b = 4'b0000; cin = 1'b0; end
        endcase
    end

    initial begin
        // Initialize VCD dump
        $dumpfile("testbench.vcd");
        $dumpvars(0, lab3_p3_TB);
        
        #500 $finish;
    end

endmodule