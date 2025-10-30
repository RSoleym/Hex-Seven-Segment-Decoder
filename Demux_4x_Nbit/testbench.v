`timescale 1us/1ns
module testbench ();

	parameter N = 8;
	reg [N-1:0] y;
	reg [1:0] sel;
	wire [N-1:0] a, b, c, d;
	
	demux_4x_nbit 
	#(.N(N))
	DEMUX4X(
		.y(y),
		.sel(sel),
		.a(a),
		.b(b),
		.c(c),
		.d(d)
	);
	
	initial begin
		$monitor ($time, " y = %d, sel = %b, a = %d, b = %d, c = %d, d = %d", y, sel, a, b, c, d);
		y = 177;
		#1; sel = 2'b00;
		#1; sel = 2'b01;
		#1; sel = 2'b10;
		#1; sel = 2'b11;
	end

endmodule
