module testbench();

	reg a, b, x;
	wire y;

	mul_1bit MULTIPLEX_1BIT(
	.x(x),
	.a(a),
	.b(b),
	.y(y)
	);

	always @ (*) begin
		$display ("x = %b a = %b, b = %b, y = %b", x, a, b, y);
	end
	
	initial begin
		#1; a = 0; b = 0; x = 0;
		#1; a = 1; b = 0; x = 0;
		#1; a = 0; b = 1; x = 0;
		#1; a = 1; b = 1; x = 0;
		#1; a = 0; b = 0; x = 1;
		#1; a = 1; b = 0; x = 1;
		#1; a = 0; b = 1; x = 1;
		#1; a = 1; b = 1; x = 1;
	end

endmodule