module encoder_3to8bit (
	input [7:0] a,
	input enable,
	output reg [2:0] y
	);
	
	integer i;
	
	always @ (*) begin
		if (enable == 1) begin
			for (i = 0; i < 8; i = i + 1)
				if (a[i])
					y = i;  
		end else
			y = 0;
	end
	
endmodule