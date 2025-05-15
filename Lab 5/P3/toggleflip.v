module toggleflip (enable, clock, clear, Q, Qnot);
    input  enable, clock, clear;
    output Q, Qnot;

    reg Q, Qnot;

    // Initialize Q and Qnot
    initial begin
        Q = 0;
        Qnot = 1;
    end

    always @ (posedge clock or posedge clear) begin
        if (clear) begin
            Q <= 0;
            Qnot <= 1;
        end else if (enable) begin
            Q <= ~Q;
            Qnot <= ~Qnot;
        end
    end
endmodule