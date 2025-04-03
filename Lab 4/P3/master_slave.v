module master_slave (clk, D, Q, Qnot);
   input  D, clk;
   output Q, Qnot;
   
   wire Qm;
   wire Qnotm;
	
   // You will need to instantiate a few instances of gated_DLatch, 
   // and perhaps assign some intermediate signals

   gated_DLatch master (~clk, D, Qm, Qnotm);
   gated_DLatch slave (clk, Qm, Q, Qnot);
	
endmodule