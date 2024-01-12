`include "conditional_decoder_7seg.v"
`timescale 1ns / 1ps

module testbench_conditional_decoder_7seg;

    // Declare signals for the testbench
    reg [2:0] ABC;         // Input signal
    wire [6:0] F;          // Output signal

    // Instantiate the conditional_decoder_7seg module
    conditional_decoder_7seg uut (
        .ABC(ABC),
        .F(F)
    );

    // Stimulus generation
    initial begin
        // Dump waveform to .vcd file
        $dumpfile("conditional_decoder_7seg.vcd");
        // Dump variables for the testbench
        $dumpvars(0, testbench_conditional_decoder_7seg);

        // Apply stimulus to ABC
        ABC = 3'b000; #10;  // Wait for 10 time units
        ABC = 3'b001; #10;
        ABC = 3'b010; #10;
        ABC = 3'b011; #10;
        ABC = 3'b100; #10;
        ABC = 3'b101; #10;
        ABC = 3'b110; #10;
        ABC = 3'b111; #10;

        // End the simulation
        $finish;
    end

endmodule
