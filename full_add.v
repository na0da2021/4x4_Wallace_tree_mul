//Full_Adder_module
module full_add(sum,cout,cin,in1,in2);

output sum, cout;
input cin,in1,in2;
assign sum   = cin ^ (in1 ^ in2);
assign cout  = (in1 & in2) | (cin & (in1 ^ in2));

endmodule