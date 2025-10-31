`timescale 1us/1ns

module testbench();
	
	parameter N = 8;
	reg [N-1:0] a;
	reg [N-1:0] b;
	reg [3:0] opcode;
	wire [N-1:0] y;
	wire z, c, n, v;
	
	ALU 
		#(.PARAM_WIDTH(N))
	CPU_ALU (
		.a(a),
		.b(b),
		.opcode(opcode),
		.y(y),
		.z(z), .c(c), .n(n), .v(v)
	);
	
	initial begin
	
		$monitor($time, " A = %b, B = %b, OpCode = %b, y = %b, z = %b, c = %b, n = %b, v = %b", a, b, opcode, y, z, c, n, v);
		#1; opcode = 0; a = 6; b = 0;
		#1; opcode = 1; a = 122;
		#1; opcode = 2; a = -4; b = 7;
		#1; opcode = 3; a = 5; b = 8;
		#1; opcode = 4; a = 8; b = 0;
		#1; opcode = 5; a = 100; b = 50;
		#1; opcode = 6; a = 23; b = 31;
		#1; opcode = 7; a = 46; b = 0;
		#1; opcode = 8; a = -13; b = 0;
		#1; opcode = 9; a = 42; b = 0;
	
	end
endmodule