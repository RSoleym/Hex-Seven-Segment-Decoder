module demux_4x_nbit
	#(parameter N = 8)
	
	(input [N-1:0] y,
	input [1:0] sel,
	output reg [N-1:0] a,
	output reg [N-1:0] b,
	output reg [N-1:0] c,
	output reg [N-1:0] d
	);
	
	always @ (*) begin
		a = 0; b = 0; c = 0; d = 0;
		case (sel)
			2'b00 : begin a = y; end
			2'b01 : begin b = y; end
			2'b10 : begin c = y; end
			2'b11 : begin d = y; end
			default : begin a = y; end
		endcase
	end

endmodule
