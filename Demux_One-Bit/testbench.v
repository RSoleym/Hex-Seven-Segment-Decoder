module testbench();

	reg sel, x;
	wire y0, y1;
	
	demux_one_bit DEMUX_ONE_BIT(
		.x(x),
		.sel(sel),
		.y0(y0),
		.y1(y1)
		);
		
	always @ (*) begin
		$display("x = %b, sel = %b, y0 = %b, y1 = %b", x, sel, y0, y1);
	end
	
	initial begin
		#1; x = 0; sel = 0;
		#1; x = 0; sel = 1;
		#1; x = 1; sel = 0;
		#1; x = 1; sel = 1;
	end
	
endmodule