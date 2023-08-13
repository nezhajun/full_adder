
module half_adder (
    input wire in1,
    input wire in2,
    output wire cout,
    output wire sum
);
    assign {cout,sum}=in1+in2;
endmodule