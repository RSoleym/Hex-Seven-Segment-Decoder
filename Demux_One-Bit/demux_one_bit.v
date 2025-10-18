module demux_one_bit(
	input x,
	input sel,
	output y0,
	output y1
	);
	
	wire sel_not;
	
	assign sel_not = ~(sel);
	assign y0 = sel_not & x;
	assign y1 = sel & x;
	
endmodule