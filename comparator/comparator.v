// module comparator (
//     input wire [3:0] x,y,
//     output wire z
// );

// // // 1- Structural modeling (gate-level)
// //     wire a0,a1,a2,a3;

// //     xnor(a0,x[0],y[1]);
// //     xnor(a1,x[1],y[1]);
// //     xnor(a2,x[2],y[2]);
// //     xnor(a3,x[3],y[3]);

// //     and (a0,a1,a2,a3);

// // // 2- Dataflow modeling
// //   assign z=&((x~^y));

// endmodule


// 3- behavioral modeling
module comparator (
    input wire [3:0] x,y,
    output reg z
);

always @(x or y) 
begin
    z=0;
    if(x==y) z=1;
end

endmodule