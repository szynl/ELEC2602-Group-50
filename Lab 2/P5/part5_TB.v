`timescale 1ns / 1ps
 
module part5_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module mux2, naming it instantiate_mux2.
	// select, input1, input2 are controlled by the testbench, output is 
	// checked  within the testbench
 
	reg [3:0] count;
	reg [1:0] S,U,V,W,X;
	
	wire [6:0] output_7seg;
	part5 instantiate_p5 (.s(S),.u(U),.v(V),.w(W),
								.x(X),.chosen_7segCode(output_7seg));
 	
	initial begin 
		count = 4'b0000;
	end
	
	always begin
		#50
		count=count+4'b0001;
	end
	
	always @(count) begin
		case (count)
		4'b0000 : begin S = 2'b00; U = 2'b00; V = 2'b01; W = 2'b10; X = 2'b11; end
		4'b0001 : begin S = 2'b00; U = 2'b01; V = 2'b10; W = 2'b11; X = 2'b00; end
		4'b0010 : begin S = 2'b01; U = 2'b10; V = 2'b11; W = 2'b00; X = 2'b01; end
		4'b0011 : begin S = 2'b10; U = 2'b11; V = 2'b00; W = 2'b01; X = 2'b10; end
		4'b0100 : begin S = 2'b11; U = 2'b00; V = 2'b01; W = 2'b10; X = 2'b11; end
		default : begin S = 2'b00; U = 2'b00; V = 2'b00; W = 2'b00; X = 2'b00; end
	endcase
	end


       // Terminate the simulation after a certain period
    initial begin
        // Initialize VCD dump
        $dumpfile("testbench.vcd");
        $dumpvars(0, part5_TB);
        
        #500 $finish;
    end
 
endmodule
