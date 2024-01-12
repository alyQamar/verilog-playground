module d_flip_flop (
    input wire clk,      // Clock input
    reset_n,        // Active low asynchronous reset
    d,              // Data input
    output reg q    // Data output
);

    // Asynchronous reset
    always @(posedge clk or negedge reset_n)
    begin
        if (!reset_n)
            q <= 1'b0; // Reset state
        else
            q <= d;    // D input state
    end

endmodule
