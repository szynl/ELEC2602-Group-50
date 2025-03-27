`timescale 1ns / 1ps
 
module TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module mux2, naming it instantiate_mux2.
	// select, input1, input2 are controlled by the testbench, output is 
	// checked  within the testbench
 
	reg [3:0] count;
	reg [3:0] input_binarya, input_binaryb;
	wire [6:0] output_7seg1, output_7seg2;
	wire error;
	
	BCD_Add instantiate_BCD_Add(.A(input_binarya), .B(input_binaryb), .cin(1'b0), .d1(output_7seg1), .d2(output_7seg2), .error(error));

	initial begin 
		count = 4'b0000;
	end
	
	always begin
		#50
		count=count+4'b0001;
	end
	
	always @(count) begin
		case (count)
		4'b0000 : begin input_binarya = 4'b0000; input_binaryb = 4'b0000; end
		4'b0001 : begin input_binarya = 4'b0001; input_binaryb = 4'b0001; end
		4'b0010 : begin input_binarya = 4'b0010; input_binaryb = 4'b0010; end
		4'b0011 : begin input_binarya = 4'b0011; input_binaryb = 4'b0011; end
		4'b0100 : begin input_binarya = 4'b0100; input_binaryb = 4'b0100; end
		4'b0101 : begin input_binarya = 4'b0101; input_binaryb = 4'b0101; end
		4'b0110 : begin input_binarya = 4'b0110; input_binaryb = 4'b0110; end
		default : begin input_binarya = 4'b0011; input_binaryb = 4'b0011; end
	endcase
	end
    initial begin
        // Initialize VCD dump
        $dumpfile("TB.vcd");
        $dumpvars(0, TB);
        
        #500 $finish;
    end
 
endmodule