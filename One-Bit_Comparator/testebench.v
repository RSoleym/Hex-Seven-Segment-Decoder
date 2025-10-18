module testbench ();

	reg a, b;
	wire gt, eql, lt;
	
	one_bit_comp COMPAREBIT (
		.a(a),
		.b(b),
		.gt(gt),
		.eql(eql),
		.lt(lt)
	);
	
	always @ (*) begin 
		$display ("a = %b, b = %b, Greater = %b, Equal = %b, Less = %b", a, b, gt, eql, lt);
	end
	
	initial begin
		#1; a = 0; b = 0;
		#1; a = 0; b = 1;
		#1; a = 1; b = 0;
		#1; a = 1; b = 1;
	end
	
endmodule

