`include "../half_adder/half_adder.v"

module full_adder
(
    input A, B, cin,
    output sum, cout
);

    wire s1, c1, c2;

    half_adder ha1 (
        .a(A),
        .b(B),
        .sum(s1),
        .cout(c1)
    );

    half_adder ha2 (
        .a(s1),
        .b(cin),
        .sum(sum),
        .cout(c2)
    );

    assign cout = c1 | c2;

endmodule