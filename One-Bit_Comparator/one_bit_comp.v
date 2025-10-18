module one_bit_comp(
	input a,
	input b,
	output gt,
	output eql,
	output lt
	);
	
	assign gt = a & ~(b);
	assign eql = a ~^ b;
	assign lt = ~(a) & b;
	
endmodule
