module adder_tree(
	input [3:0] a,
	input [3:0] b,
	input [7:0] c,
	input [7:0] d,
	output [9:0] sum3
	);
	
	wire [4:0] sum1; 
	wire [8:0] sum2;
	
	assign sum1 = a + b;
	assign sum2 = c + d;
	assign sum3 = sum1 + sum2;
	
endmodule
	