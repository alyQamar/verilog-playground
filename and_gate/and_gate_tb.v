`include "and_gate.v"

module and_gate_tb;
    reg [1:0] a, b;
    wire [1:0] c;

    and_gate uut(a, b, c); // Instantiating and_gate module

    initial
    begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);
        
        a = 2'b00; b = 2'b00; // 0 & 0
        #1;
        
        a = 2'b00; b = 2'b01; // 0 & 1
        #1;
        
        a = 2'b01; b = 2'b00; // 1 & 0
        #1;
        
        a = 2'b01; b = 2'b01; // 1 & 1
        #1;
        
        $finish; // End the simulation
    end
endmodule