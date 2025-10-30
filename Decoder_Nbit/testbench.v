`timescale 1us/1ns
module testbench ();

	parameter N = 3;
	
	reg [N-1:0] a;
	reg enable;
	wire [2**N-1:0] y;
	
	integer i;
	
	decoder_nbit
	#(.N(N))
	DECODER (
		.a(a),
		.enable(enable),
		.y(y)
		);
	
	initial begin 
		$monitor($time, " a = %b, y = %b", a, y);
		#1;
		for (i = 0; i < 2**N; i = i+1) begin
			#1; a = i; enable = 1;
		end
	end

endmodule
