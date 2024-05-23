// Wallace_Tree_Multiplietr(4*4) 

module wallace_tree_multiplier (out, in1, in2);

// decleration of inputs & outputs
//in1 => multiplicand
//in2 => multiplier

input[3:0]  in1, in2;
output[7:0] out;

//step_1 (multiplication of every single bit of multiplier * multiplicand)

wire[3:0] s1, s2, s3, s4; 
assign s1 = (in2[0] == 1) ? in1 : (in2[0] == 0) ? "0000" : 4'bx;
assign s2 = (in2[1] == 1) ? in1 : (in2[1] == 0) ? "0000" : 4'bx;
assign s3 = (in2[2] == 1) ? in1 : (in2[2] == 0) ? "0000" : 4'bx;
assign s4 = (in2[3] == 1) ? in1 : (in2[3] == 0) ? "0000" : 4'bx;

//step_2(first iteration)

wire i1, i2, i3, c1,c2, c3;

half_add ha1(i1,c1,s1[2],s2[1]);
full_add fa1(i2,c2,s1[3],s2[2],s3[1]);
full_add fa2(i3,c3,s2[3],s3[2],s4[1]);


//step_3(second iteration)

wire i11, i22, i33, c11, c22, c33;

half_add ha2(i11,c11,c1,i2);
half_add fa3(i22,c22,c2,i3);
full_add fa4(i33,c33,c3,s3[3],s4[2]);

//now we have at most 2_bits @ every bit_position 
// next step is to use 6-bit Carry lookahead adder(CLA)

wire[5:0] x,y;
assign x = {c33,c22,c11,i11,i1,s1[1]};
assign y = {s4[3],i33,i22,s4[0],s3[0],s2[0]};

wire[5:0] sum;
wire carry;
cla cla1(sum,carry,x,y);
assign out = {carry,sum[5],sum[4],sum[3],sum[2],sum[1],sum[0],s1[0]};

endmodule