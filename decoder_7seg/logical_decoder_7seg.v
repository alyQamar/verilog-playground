module logical_decoder_7seg
(
    input wire A, B, C,
    output wire Fa, Fb, Fc, Fd, Fe, Ff, Fg
);

wire An, Bn, Cn;

assign An = ~A;
assign Bn = ~B;
assign Cn = ~C;

assign Fa = (An & Cn) | B | (A & C);
assign Fb = (Cn & Bn) | An | (B & C);
assign Fc = A | Bn | C;
assign Fd = (An & Cn) | (An & B) | (B & Cn) | (A & Bn & C);
assign Fe = (An & Cn) | (B & Cn);
assign Ff = (Bn & Cn) | (A & Cn) | (A & Bn);
assign Fg = (An & B) | (A & Cn) | (A & Bn);

endmodule
