`timescale 1us/1ns
module testbench();

	parameter N = 4;
	reg [N-1:0] a;
	wire [2**N-1:0] d;
	
	integer i;
	
	decoder_4to16
	#(.N(N))
	DEC4_16 (
	.a(a),
	.d(d)
	);
	
	initial begin
		$monitor($time, " a = %d, d = %b",a, d);
		#1;
		for (i = 0; i < 2**N; i = i + 1) begin
			a = i; #1;
		end
	end
	
endmodule


	
	