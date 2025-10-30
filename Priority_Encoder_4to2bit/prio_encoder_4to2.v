module prio_encoder_4to2(
	input [3:0] d,
	output reg [1:0] q,
	output reg v
	);
	
	always @ (*) begin
		v = 1;
		if (d[3])
			q = 2'b11;
		else if (d[2])
			q = 2'b10;
		else if (d[1])
			q = 2'b01;
		else if (d[0])
			q = 2'b00;
		else begin
			v = 0; q = 0;
		end 
	end
	
endmodule

