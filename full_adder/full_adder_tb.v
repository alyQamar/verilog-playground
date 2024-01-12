`timescale 1ns / 1ps
`include "full_adder.v"

module full_adder_tb;

    // Declare signals for the testbench
    reg a, b, c;
    wire sum, carry;

    // Instantiate the full_adder module
    full_adder uut (
        .A(a),
        .B(b),
        .cin(c),
        .sum(sum),
        .cout(carry)
    );

    // Initial block for stimulus generation and response checking
    initial 
    begin
        $dumpfile("full_adder.vcd"); // Dump waveform to .vcd file
        $dumpvars(0, full_adder_tb); // Dump variables for the testbench

        // Test cases with display statements
        a = 1'b0; b = 1'b0; c = 1'b0;
        #1;
        $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);

        a = 1'b0; b = 1'b0; c = 1'b1;
        #1;
        $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);

        a = 1'b0; b = 1'b1; c = 1'b0;
        #1;
        $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);

        a = 1'b0; b = 1'b1; c = 1'b1;
        #1;
        $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);

        a = 1'b1; b = 1'b0; c = 1'b0;
        #1;
        $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);

        a = 1'b1; b = 1'b0; c = 1'b1;
        #1;
        $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);

        a = 1'b1; b = 1'b1; c = 1'b0;
        #1;
        $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);

        a = 1'b1; b = 1'b1; c = 1'b1;
        #1;
        $display("a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, sum, carry);

        $finish;
    end

endmodule