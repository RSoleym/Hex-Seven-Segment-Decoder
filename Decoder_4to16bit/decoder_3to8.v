module decoder_3to8

	(input [2:0] a,
	input a3,
	output reg [7:0] d
	);
	
	always @ (*) begin
		if (a3 == 1)
			d = 1 << a;
		else
			d = 0;
	end
	
endmodule 