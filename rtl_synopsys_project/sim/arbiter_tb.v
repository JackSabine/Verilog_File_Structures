module arbiter_tb();

reg clk, rst_n;

initial     clk = 1'b0;
always #5   clk = ~clk;

initial begin
    rst_n = 1'b0;
    #10; rst_n = 1'b1;
end


reg R0_stim, R1_stim;
wire G0_watch, G1_watch;

arbiter DUT(
    rst_n, clk, R0_stim, R1_stim, G0_watch, G1_watch
);

initial begin
    R0_stim = 0;
    R1_stim = 0;
    #10;
    
    #10;
    R0_stim = 1;
    R1_stim = 1;

    #10;
    R0_stim = 0;
    R1_stim = 0;

    #10;
    R0_stim = 1;
    R1_stim = 0;

    #10;
    R0_stim = 0;
    R1_stim = 1;

    #10;
    R0_stim = 0;
    R1_stim = 0;
end


endmodule