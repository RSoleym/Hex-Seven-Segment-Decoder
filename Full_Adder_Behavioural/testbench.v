module testbench();

	reg a;
	reg b;
	reg cin;
	wire sum;
	wire cout;
	
	full_adder_behav FA_BEHAV(
		.a(a),
		.b(b),
		.cin(cin),
		.sum(sum),
		.cout(cout)
		);

	initial begin
		$monitor("a = %b, b = %b, cin = %b, sum = %b, cout = %b ", a, b, cin, sum, cout);
	end
	
	initial begin 
		
		#1; a = 0; b = 0; cin = 0;
		#1; a = 0; b = 0; cin = 1;
		#1; a = 0; b = 1; cin = 0;
		#1; a = 0; b = 1; cin = 1;
		#1; a = 1; b = 0; cin = 0;
		#1; a = 1; b = 0; cin = 1;
		#1; a = 1; b = 1; cin = 0;
		#1; a = 1; b = 1; cin = 1;
		
	end

endmodule	
	