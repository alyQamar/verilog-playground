`include "../full_adder/full_adder.v"

module rbs_4bit
(
    input wire [3:0] A, B,
    input wire Subtract, // 0 for addition, 1 for subtraction
    output wire [3:0] Sum,
    output wire Cout
);

    wire c1, c2, c3;

    // Define signals to control addition or subtraction
    wire [3:0] B_sub;
    assign B_sub = ~B + 1;

    // Full adders for each bit
    full_adder fa0 (
        .A(A[0]),
        .B((Subtract) ? B_sub[0] : B[0]),
        .cin(1'b0),
        .sum(Sum[0]),
        .cout(c1)
    );

    full_adder fa1 (
        .A(A[1]),
        .B((Subtract) ? B_sub[1] : B[1]),
        .cin(c1),
        .sum(Sum[1]),
        .cout(c2)
    );

    full_adder fa2 (
        .A(A[2]),
        .B((Subtract) ? B_sub[2] : B[2]),
        .cin(c2),
        .sum(Sum[2]),
        .cout(c3)
    );

    full_adder fa3 (
        .A(A[3]),
        .B((Subtract) ? B_sub[3] : B[3]),
        .cin(c3),
        .sum(Sum[3]),
        .cout(Cout)
    );

endmodule
