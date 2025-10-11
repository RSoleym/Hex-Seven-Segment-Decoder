module four_bit_ripple_str(
	input [3:0]a,
	input [3:0]b,
	input cin,
	output [3:0]sum,
	output cout
	);
	
	wire [2:0] c;
	
	full_adder_struc FULLADDER1(
	.a(a[0]),
	.b(b[0]),
	.cin(cin),
	.cout(c[0]),
	.sum(sum[0])
	);
	
	full_adder_struc FULLADDER2(
	.a(a[1]),
	.b(b[1]),
	.cin(c[0]),
	.cout(c[1]),
	.sum(sum[1])
	);
	
	full_adder_struc FULLADDER3(
	.a(a[2]),
	.b(b[2]),
	.cin(c[1]),
	.cout(c[2]),
	.sum(sum[2])
	);
	
	full_adder_struc FULLADDER4(
	.a(a[3]),
	.b(b[3]),
	.cin(c[2]),
	.cout(cout),
	.sum(sum[3])
	);

endmodule