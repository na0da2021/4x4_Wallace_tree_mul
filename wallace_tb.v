module wallace_tb();

reg  [3:0]in1, in2;
wire [7:0]out;

wallace_tree_multiplier dut(.out(out), .in1(in1), .in2(in2));

initial begin
$monitor(" in1 = %b | in2 = %b |  out = %b \n" , in1, in2, out);

in1 = 10;
in2 = 2;

#10
in1 = 1;
in2 = 15;

#10
in1 = 10;
in2 = 12;

#10
in1 = 0;
in2 = 3;

#10
in1 = 3;
in2 = 5;

#10
in1 = 8;
in2 = 6;

#10
in1 = 6;
in2 = 10;
end

endmodule
