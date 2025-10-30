module testbench();

	reg [3:0] a, b;
	reg [7:0] c, d;
	wire [9:0] sum3;

	adder_tree ADDERTREE(
		.a(a), .b(b), .c(c),
		.d(d), .sum3(sum3)
		);
	
	always @ (*) begin
		$display("a = %d, b = %d, c = %d, d = %d, sum3 = %d", a, b, c, d, sum3);
	end 
	
	initial begin
		#1; a = 4'd0; b = 4'd3; c = 8'd1; d = 8'd255;
		#1; a = 4'd10; b = 4'd13; c = 8'd9; d = 8'd10;
		#1; a = 4'd15; b = 4'd15; c = 8'd109; d = 8'd37;
		#1; a = 4'd0; b = 4'd9; c = 8'd45; d = 8'd45;
	end
	
endmodule