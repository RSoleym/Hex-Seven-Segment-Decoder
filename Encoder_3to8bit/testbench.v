`timescale 1us/1ns
module testbench();
	
	parameter N = 3;
	reg [2**N-1:0] a;
	reg enable;
	wire [N-1:0] y;
	
	integer i;
	
	encoder_3to8bit ENC1(
		.a(a),
		.enable(enable),
		.y(y)
		);
		
	initial begin 
		$monitor($time, " a = %b, y = %d",a, y);
		enable = 1; #1;
		for (i=0; i < 2**N; i = i+1) begin
			a = 1 << i; #1;
		end
	end

endmodule 
