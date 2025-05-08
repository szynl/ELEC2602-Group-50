module counter (clock, clear, enable, Q);
    input  clock, clear, enable;
    output [15:0] Q;

    wire Qnotnot;
	 wire [5:0] current_count;

    toggleflip T1 (enable, clock, clear, Q[0], Qnotnot);
    toggleflip T2 (enable && Q[0], clock, clear, Q[1], Qnotnot);
    toggleflip T3 (enable && Q[0] && Q[1], clock, clear, Q[2], Qnotnot);
    toggleflip T4 (enable && Q[0] && Q[1] && Q[2], clock, clear, Q[3], Qnotnot);
	 toggleflip T5 (enable && Q[0] && Q[1] && Q[2] && Q[3], clock, clear, Q[4], Qnotnot);
    toggleflip T6 (enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4], clock, clear, Q[5], Qnotnot);
    toggleflip T7 (enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5], clock, clear, Q[6], Qnotnot);
    toggleflip T8 (enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6], clock, clear, Q[7], Qnotnot);
	 toggleflip T9 (enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6] && Q[7], clock, clear, Q[8], Qnotnot);
    toggleflip T10(enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6] && Q[7]&& Q[8], clock, clear, Q[9], Qnotnot);
    toggleflip T11(enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6] && Q[7]&& Q[8] && Q[9], clock, clear, Q[10], Qnotnot);
    toggleflip T12(enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6] && Q[7]&& Q[8] && Q[9] && Q[10], clock, clear, Q[11], Qnotnot);
	 toggleflip T13(enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6] && Q[7]&& Q[8] && Q[9] && Q[10] && Q[11], clock, clear, Q[12], Qnotnot);
    toggleflip T14(enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6] && Q[7]&& Q[8] && Q[9] && Q[10] && Q[11] && Q[12], clock, clear, Q[13], Qnotnot);
    toggleflip T15(enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6] && Q[7]&& Q[8] && Q[9] && Q[10] && Q[11] && Q[12] && Q[13], clock, clear, Q[14], Qnotnot);
    toggleflip T16(enable && Q[0] && Q[1] && Q[2] && Q[3] && Q[4] && Q[5] && Q[6] && Q[7]&& Q[8] && Q[9] && Q[10] && Q[11] && Q[12] && Q[13] && Q[14], clock, clear, Q[15], Qnotnot);
	 
	 

endmodule
