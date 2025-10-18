module tri_state_buff(
	input din,
	input sel,
	output dout
	);
	
	bufif1 B1 (dout, din, sel);
	
endmodule