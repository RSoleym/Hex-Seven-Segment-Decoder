`timescale 1us/1ns
module testbench ();

	parameter N = 8;
	reg [N-1:0] a, b, c, d;
	reg [1:0] sel;
	wire [N-1:0] y;
	
	mux_4x_nbit MUX4BIT(
		.a(a), .b(b),
		.c(c), .d(d),
		.sel(sel), .y(y)
	);
	
	initial begin
		$monitor ($time, " a = %d, b = %d, c = %d, d = %d, sel = %b, y = %d", a, b, c, d, sel, y);
		#1; a = 200; b = 122; c = 255; d = 17; sel = 2'b00;
		#1; sel = 2'b01;
		#1; sel = 2'b10;
		#1; sel = 2'b11;
	end
	
endmodule

