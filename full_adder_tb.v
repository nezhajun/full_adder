`timescale 1ns/1ns

/*
module test_ ();

    reg ai,bi,ci;
    wire co,so;

    initial begin
        {ai,bi,ci}=3'b0;
        forever begin
            #10;
            {ai,bi,ci} = {ai,bi,ci} + 1'b1;
        end
    end

initial begin
    forever begin
        #100;
        $display("---gyc---%d", $time);
        if ($time>=1000) begin
            $finish;
        end

    end
end

initial begin            
    $dumpfile("wave.lxt"); // 指定用作dumpfile的文件
    $dumpfile("wave.vcd"); // 指定用作dumpfile的文件
    $dumpvars; // dump all vars
end

full_adder u_full_adder(
    .ai ( ai ),
    .bi ( bi ),
    .ci ( ci ),
    .co ( co ),
    .so  ( so  )
);


endmodule

*/

module full_adder_tb();

reg in1,in2,cin;
wire cout,sum;

initial begin
    in1=1'b0;
    in2=1'b0;
    cin=1'b0;
end

always #10 in1={$random}%2;
always #10 in2={$random}%2;
always #10 cin={$random}%2;

initial begin
    forever begin
        #10;
//		$display("---gyc---%4d", $time);
        if($time>1000)$finish;
    end
end

initial begin
    // $dumpfile("wave.lxt"); // 指定用作dumpfile的文件
	$display("hello, 在下石同学！");
	$display("hello, 在下石同学！");
	$display("hello, 在下石同学！");
    $dumpfile("wave.vcd"); // 指定用作dumpfile的文件
    $dumpvars; // dump all vars
end

full_adder u_full_adder(
    .in1 ( in1 ),
    .in2 ( in2 ),
    .cin ( cin ),
    .sum ( sum ),
    .cout  ( cout  )
);


endmodule
