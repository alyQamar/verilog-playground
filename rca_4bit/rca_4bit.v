`include "../full_adder/full_adder.v"

module rca_4bit
(
    input wire [3:0] A,B,
    output wire [3:0] Sum,
    output wire Cout
)

    wire = c1,c2,c3;

    full_adder fa0 
    (
        // inputs
        A[0],
        B[0],
        1`b0,
        // outputs
        Sum[0],
        c1
    );
    full_adder fa1 
    (
        // inputs
        A[1],
        B[1],
        c1,
        // outputs
        Sum[1],
        c2
        
    );
    full_adder fa2 
    (
        A[2],
        B[2],
        c2,
        Sum[2],
        c3
    );
    full_adder fa3 
    (
        A[3],
        B[3],
        c3,
        Sum[3],
        Cout
    );

endmodule
