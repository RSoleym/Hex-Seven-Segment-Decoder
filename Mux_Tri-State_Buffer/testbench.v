module testbench();

	reg a, b, sel;
	wire dout;
	
	mux_tristate_buff TRISTATEMUX(
		.a(a),
		.b(b),
		.sel(sel),
		.dout(dout)
	);
	
	always @ (*) begin 
		$display ("a = %b, b = %b, sel = %b, dout = %b" , a, b, sel, dout);
	end
	
	initial begin 
		#1; a = 0; b = 0; sel = 0;
		#1; a = 1; b = 0; sel = 0;
		#1; a = 0; b = 1; sel = 0;
		#1; a = 1; b = 1; sel = 0;
		#1; a = 0; b = 0; sel = 1;
		#1; a = 1; b = 1; sel = 1;
		#1; a = 0; b = 1; sel = 1;
		#1; a = 1; b = 0; sel = 1;
	end
	
endmodule
