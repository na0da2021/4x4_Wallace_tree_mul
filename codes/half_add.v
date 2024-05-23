//Half_Adder_module
module half_add(sum,carry,in1,in2);

output sum, carry;
input in1,in2;
assign sum   = in1 ^ in2;
assign carry = in1 & in2; 

endmodule
