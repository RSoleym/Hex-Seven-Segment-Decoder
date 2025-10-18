module mul_1bit(
	input x,
	input a,
	input b,
	output y
	);
	
	wire bit1;
	wire bit2;
	wire not_x;
	
	assign not_x = ~(x);
	assign bit1 = a & not_x;
	assign bit2 = x & b;
	assign y = bit1 | bit2;
	
endmodule

	
	