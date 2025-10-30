module decoder_nbit
	#( parameter N = 3)
	(input [N-1:0] a,
	input enable,
	output reg [2**N - 1:0] y
	);
	
	always @ (*) begin
		if (enable == 1)
			y = 1 << a;
		else 
			y = 0;
	end
	
endmodule