module full_adder_struc(
	input a,
	input b,
	input cin,
	output cout,
	output sum
	);
	
	wire sum1;
	wire c2;
	wire c1;
	
	half_adder_structural HA1(
		.a(a),
		.b(b),
		.sum(sum1),
		.carry(c1)
		);
		
	half_adder_structural HA2(
		.a(sum1),
		.b(cin),
		.sum(sum),
		.carry(c2)
		);
		
	or (cout, c1, c2);

endmodule

