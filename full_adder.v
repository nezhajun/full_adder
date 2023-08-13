
/**
module full_adder (
    input ai,bi,ci,
    output co,so
);

assign {co,so}=ai+bi+ci;

endmodule

**/

module full_adder (
    input wire in1,
    input wire in2,
    input wire cin,
    output wire sum,
    output wire cout
);

wire u0_cout;
wire u0_sum;
wire u1_cout;

half_adder u0_half_adder(
    .in1  ( in1  ),
    .in2  ( in2  ),
    .cout ( u0_cout ),
    .sum  ( u0_sum  )
);

half_adder u1_half_adder(
    .in1  ( u0_sum  ),
    .in2  ( cin  ),
    .cout ( u1_cout ),
    .sum  ( sum  )
);

assign cout=u0_cout|u1_cout;


endmodule