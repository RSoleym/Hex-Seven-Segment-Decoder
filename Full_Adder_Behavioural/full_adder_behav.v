module full_adder_behav(
	input a,
	input b,
	input cin,
	output reg sum,
	output reg cout
	);
	
	always @ (*) begin
		sum = (a ^ b) ^ cin;
		cout = (cin & sum) | (a & b);
	end
	
endmodule
