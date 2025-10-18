module testbench();

reg din, sel;
wire dout;

tri_state_buff TRI_BUFFSET(
	.din(din),
	.sel(sel),
	.dout(dout)
	);
	
	always @ (*) begin
		$display ("din = %b, sel = %b, dout = %b", din, sel, dout);
	end
	
	initial begin
		#1; din = 0; sel = 0;
		#1; din = 1; sel = 0;
		#1; din = 0; sel = 1;
		#1; din = 1; sel = 1;
	end

endmodule

