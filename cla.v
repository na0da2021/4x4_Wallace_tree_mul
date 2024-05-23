//6-bit_Carry_lookahead_adder_module
module cla(sum,carry,x,y);
output[5:0] sum;
output carry;
input[5:0] x,y; 

//carry generation
wire g0,g1,g2,g3,g4,g5;
assign g0 = x[0] & y[0];
assign g1 = x[1] & y[1];
assign g2 = x[2] & y[2];
assign g3 = x[3] & y[3];
assign g4 = x[4] & y[4];
assign g5 = x[5] & y[5];

//carry propagation
wire p0,p1,p2,p3,p4,p5;
assign p0 = x[0] ^ y[0];
assign p1 = x[1] ^ y[1];
assign p2 = x[2] ^ y[2];
assign p3 = x[3] ^ y[3];
assign p4 = x[4] ^ y[4];
assign p5 = x[5] ^ y[5];

//intermidiated carries
wire c0,c1,c2,c3,c4;
assign c0 = g0;
assign c1 = g1 | p1 & c0;
assign c2 = g2 | p2 & c1;
assign c3 = g3 | p3 & c2;
assign c4 = g4 | p4 & c3;
 
//carry out (final carry)

assign carry = g5 | p5 & c4;

//sum
assign sum[0] = p0 ^ c0;
assign sum[1] = p1 ^ c1;
assign sum[2] = p2 ^ c2;
assign sum[3] = p3 ^ c3;
assign sum[4] = p4 ^ c4;
assign sum[5] = p5 ^ carry;

endmodule