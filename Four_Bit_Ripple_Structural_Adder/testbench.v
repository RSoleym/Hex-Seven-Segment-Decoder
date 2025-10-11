module testbench();

	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	
	wire cout;
	wire [3:0] sum;
	
	integer i,j;
	
	four_bit_ripple_str FOURBITADDER(
	.a(a),
	.b(b),
	.cin(cin),
	.cout(cout),
	.sum(sum)
	);
	
	initial begin
		$monitor("a = %b, b = %b, cin = %b, sum = %b, cout = %b ", a, b, cin, sum, cout);
	end
	
	initial begin 
		for (i = 0; i < 8; i=i+1) begin
			for (j = 0; j < 8; j=j+1) begin
				#1; a = i; b = j; cin = 0;
			end
		end
		#1; cin = 1;
	end

endmodule