module testbench();

	reg a, b;
	wire c;
	
	logic_test TESTLOGIC (
		.a(a),
		.b(b),
		.c(c)
		);
		
	always @ (*) begin
		$display ("a = %b, b = %b, c = %b", a, b, c);
	end
	
	initial begin
		#1; a = 0; b = 0;
		#1; a = 1; b = 0;
		#1; a = 0; b = 1;
		#1; a = 1; b = 1;
	end

endmodule
