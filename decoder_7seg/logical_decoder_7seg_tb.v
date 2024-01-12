`timescale 1ns / 1ps
`include "logical_decoder_7seg.v"

module logical_decoder_7seg_tb;

    // Declare signals for the testbench
    reg A, B, C;
    wire Fa, Fb, Fc, Fd, Fe, Ff, Fg;

    // Instantiate the logical_decoder_7seg module
    logical_decoder_7seg uut (
        .A(A),
        .B(B),
        .C(C),
        .Fa(Fa),
        .Fb(Fb),
        .Fc(Fc),
        .Fd(Fd),
        .Fe(Fe),
        .Ff(Ff),
        .Fg(Fg)
    );

    // Stimulus generation
    initial begin
        // Dump waveform to .vcd file
        $dumpfile("logical_decoder_7seg.vcd"); 
        // Dump variables for the testbench
        $dumpvars(0, logical_decoder_7seg_tb); 
        
        // Display the header for the simulation results
        $display("A B C | Fa Fb Fc Fd Fe Ff Fg");
        $display("-------------------------------");

        // Set inputs for the specific cases and display the outputs
        A = 0; B = 0; C = 0; #1;
        $display("0 0 0 | %b %b %b %b %b %b %b", Fa, Fb, Fc, Fd, Fe, Ff, Fg);

        A = 0; B = 0; C = 1; #1;
        $display("0 0 1 | %b %b %b %b %b %b %b", Fa, Fb, Fc, Fd, Fe, Ff, Fg);

        A = 0; B = 1; C = 0; #1;
        $display("0 1 0 | %b %b %b %b %b %b %b", Fa, Fb, Fc, Fd, Fe, Ff, Fg);

        A = 0; B = 1; C = 1; #1;
        $display("0 1 1 | %b %b %b %b %b %b %b", Fa, Fb, Fc, Fd, Fe, Ff, Fg);

        A = 1; B = 0; C = 0; #1;
        $display("1 0 0 | %b %b %b %b %b %b %b", Fa, Fb, Fc, Fd, Fe, Ff, Fg);

        A = 1; B = 0; C = 1; #1;
        $display("1 0 1 | %b %b %b %b %b %b %b", Fa, Fb, Fc, Fd, Fe, Ff, Fg);

        A = 1; B = 1; C = 0; #1;
        $display("1 1 0 | %b %b %b %b %b %b %b", Fa, Fb, Fc, Fd, Fe, Ff, Fg);

        A = 1; B = 1; C = 1; #1;
        $display("1 1 1 | %b %b %b %b %b %b %b", Fa, Fb, Fc, Fd, Fe, Ff, Fg);

        // End the simulation
        $finish;
    end

endmodule
