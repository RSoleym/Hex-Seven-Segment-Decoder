module testbench ();

	parameter N = 12;
	reg [N-1:0] a, b;
	wire smaller, equal, greater;
	
	compar_nbit 
	#(.N(N))
	
	COMPARATOR_BIT(
	.a(a),
	.b(b),
	.smaller(smaller), .equal(equal), .greater(greater)
	);
	
  initial begin
    $monitor(" a=%d b=%d smaller=%b equal=%b greater=%b", a, b, smaller, equal, greater);
    #2; a = 0; b = 0;
    #2; a = 5; b = 99;
    #2; a = 77; b = 77;
    #2; a = 100; b = 47;
    #2;
	end

endmodule

