module test(
		input a,
		input b,
		input c,
		input d,
		input e,
		
		output o1,
		output o2,
		output o3
);

assign o1 = a&b;
assign o2 = c|d;
assign o3 = ~e;

endmodule
