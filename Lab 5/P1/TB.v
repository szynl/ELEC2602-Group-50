`timescale 1ns / 1ps
 
module TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module counter, and testing with the relevant signals
	
	reg [3:0] count;
    reg Din,Clkin,clear;
    wire [3:0] Q;
	
	// instantiate the counter

    counter instantiate_counter (Clkin, clear, Din, Q);
	
	initial begin 
		count = 4'b0000;
		Clkin =1'b0;
        clear = 1'b1; // Assert clear
        #50 clear = 1'b0; // Deassert clear after 50 time units
	end
	
	always begin
		#50
		count=count+4'b0001;
	end
	
	always begin
		#10
		Clkin = 1'b0;
		#10
		Clkin = 1'b1;
	end	

	
	always @(count) begin
		case (count)
		4'b0000 : begin Din = 1'b1; end
		4'b0001 : begin Din = 1'b1; end
		4'b0010 : begin Din = 1'b1; end
		4'b0011 : begin Din = 1'b1; end
		4'b0100 : begin Din = 1'b1; end
		4'b0101 : begin Din = 1'b1; end
		4'b0110 : begin Din = 1'b1; end
		4'b0111 : begin Din = 1'b1; end
		4'b1000 : begin Din = 1'b1; end
		4'b1001 : begin Din = 1'b0; end
		4'b1010 : begin Din = 1'b0; end
		4'b1011 : begin Din = 1'b0; end
		4'b1100 : begin Din = 1'b0; end
		4'b1101 : begin Din = 1'b0; end
		4'b1110 : begin Din = 1'b0; end
		4'b1111 : begin Din = 1'b0; end
		default : begin Din = 1'b0; end
	endcase
	end

      initial begin
        // Initialize VCD dump
        $dumpfile("TB.vcd");
        $dumpvars(0, TB);
        
        #1000 $finish;
    end
endmodule
