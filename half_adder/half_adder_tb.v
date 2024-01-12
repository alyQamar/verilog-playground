`timescale 1ns / 1ps
`include "half_adder.v"

module half_adder_tb;

    // Declare signals for the testbench
    reg a, b;
    wire sum, cout;

    // Instantiate the half_adder module
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );

    // Initial block for stimulus generation and response checking
    initial 
    begin
        $dumpfile("half_adder.vcd"); // Dump waveform to .vcd file
        $dumpvars(0, half_adder_tb); // Dump variables for the testbench

        // Test cases
        a = 1'b0; b = 1'b0; // a = b = 0
        #1; // Wait for 1 time unit
        // At this point, sum should be 0 and cout should be 0
        // Display the values of a, b, sum, and cout
        $display("a=%b, b=%b, sum=%b, cout=%b", a, b, sum, cout);

        a = 1'b0; b = 1'b1; // a = 0, b = 1
        #1; // Wait for 1 time unit
        // At this point, sum should be 1 and cout should be 0
        $display("a=%b, b=%b, sum=%b, cout=%b", a, b, sum, cout);

        a = 1'b1; b = 1'b0; // a = 1, b = 0
        #1; // Wait for 1 time unit
        // At this point, sum should be 1 and cout should be 0
        $display("a=%b, b=%b, sum=%b, cout=%b", a, b, sum, cout);

        a = 1'b1; b = 1'b1; // a = b = 1
        #1; // Wait for 1 time unit
        // At this point, sum should be 0 and cout should be 1
        $display("a=%b, b=%b, sum=%b, cout=%b", a, b, sum, cout);

        $finish;
    end

endmodule