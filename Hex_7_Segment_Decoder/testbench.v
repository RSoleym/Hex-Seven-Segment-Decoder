`timescale 1us/1ns

module testbench();

	reg [3:0] in;
	wire [6:0] out;
	wire dot;
	
	integer i;
	
	hex_7seg_dec HEX7DEC(
		.in(in),
		.out(out),
		.dot(dot)
		);
		
	initial begin 
		$monitor($time, " in = %d, Segment Code = %b, dot = %b", in, out, dot);
		#1; in = 0;
		for (i = 0; i<16; i = i + 1) begin
			#1; in = i;
		end
		#1;
	end
	
endmodule 

