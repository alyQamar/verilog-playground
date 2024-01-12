`timescale 1ns / 1ns
`include "d_flip_flop.v"

module d_flip_flop_tb;

    // Declare signals and instantiate D flip-flop
    reg clk, reset_n, d;
    wire q;

    // Instantiate D flip-flop
    d_flip_flop uut (
        .clk(clk),
        .reset_n(reset_n),
        .d(d),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Reset generation
    initial begin
        clk = 0;
        reset_n = 0; // Assert reset
        #10 reset_n = 1; // De-assert reset after 10 time units

        // Test sequence
        #20 d = 0; // Apply D input as 0
        #20 d = 1; // Apply D input as 1
        #20 d = 0; // Apply D input as 0
        #20 d = 1; // Apply D input as 1
        #20 d = 0; // Apply D input as 0
        #20 $finish; // Finish simulation
    end

    // Monitor for displaying output q
    always @(posedge clk) begin
        $display("Time=%0t, D=%b, Q=%b", $time, d, q);
    end

endmodule
