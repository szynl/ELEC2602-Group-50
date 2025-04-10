module counter (clock, clear, enable, Q);
    input  clock, clear, enable;
    output [3:0] Q;

    wire Qnotnot;

    toggleflip T1 (enable, clock, clear, Q[0], Qnotnot);
    toggleflip T2 (enable && Q[0], clock, clear, Q[1], Qnotnot);
    toggleflip T3 (enable && Q[0] && Q[1], clock, clear, Q[2], Qnotnot);
    toggleflip T4 (enable && Q[0] && Q[1] && Q[2], clock, clear, Q[3], Qnotnot);

endmodule