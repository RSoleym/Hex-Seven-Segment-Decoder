`timescale 1us/1ns
module testbench();
	
	reg [3:0] d;
	wire [1:0] q;
	wire v;
	
	prio_encoder_4to2 PRIO1 (
		.d(d),
		.q(q),
		.v(v)
	);
	
	initial begin 
		$monitor($time, " d = %b, q = %b, v = %b", d, q, v);
		#1; d = 'b0000;
		#1; d = 'b0001;
		#1; d = 'b0010;
		#1; d = 'b0100;
		#1; d = 'b1000;
		#1; d = 'b1010;
		#1; d = 'b0101;
	end
	
endmodule