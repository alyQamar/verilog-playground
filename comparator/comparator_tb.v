`timescale 1ns / 1ps
`include "comparator.v"

module comparator_tb;

    // Declare signals for testbench
    reg [3:0] x, y;
    wire z;

    // Instantiate the comparator module
    comparator uut(x, y, z);

    // Initial block for stimulus generation and response checking
    initial 
    begin
        $dumpfile("comparator.vcd"); // Dump waveform to .vcd file
        $dumpvars(0, comparator_tb); // Dump variables for the testbench

        // Test cases
        x = 4'b0000; y = 4'b0000; // x = y = 0000
        #1; // Wait for 1 time unit
        // At this point, z should be 1 (since x == y)

        x = 4'b0001; y = 4'b0000; // x = 0001, y = 0000
        #1; // Wait for 1 time unit
        // At this point, z should be 0 (since x != y)

        x = 4'b1010; y = 4'b1010; // x = y = 1010
        #1; // Wait for 1 time unit
        // At this point, z should be 1 (since x == y)

        x = 4'b1100; y = 4'b1110; // x = 1100, y = 1110
        #1; // Wait for 1 time unit
        // At this point, z should be 0 (since x != y)

        // You can add more test cases as required...

        $finish; // End the simulation
    end

endmodule
