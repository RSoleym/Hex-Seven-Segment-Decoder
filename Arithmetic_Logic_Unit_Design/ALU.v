module ALU
	#(parameter PARAM_WIDTH = 8)
	(
		input [PARAM_WIDTH-1:0] a,
		input [PARAM_WIDTH-1:0] b,
		input [3:0] opcode,
		output reg [PARAM_WIDTH-1:0] y,
		output reg z,
		output reg c,
		output reg n,
		output reg v
	);
	
	localparam OP_TSFA = 'b0000;
	localparam OP_INCA = 'b0001;
	localparam OP_ADD  = 'b0010;
	localparam OP_SUB  = 'b0011;
	localparam OP_DECA = 'b0100;
	localparam OP_AND  = 'b0101;
	localparam OP_OR   = 'b0110;
	localparam OP_XOR  = 'b0111;
	localparam OP_COMA = 'b1000;
	localparam OP_SHRA = 'b1001;
	localparam OP_SHLA = 'b1010;

	always @ (*) begin
		c = 0; v = 0;
		case(opcode)
			OP_TSFA : begin y = a; 				  end
			OP_INCA : begin y = a + 1; 			  end
			OP_ADD  : begin {c, y} = a + b; 	 
							v = (a[PARAM_WIDTH-1] == b[PARAM_WIDTH-1]) && (y[PARAM_WIDTH-1] != a[PARAM_WIDTH-1]); 
					  end
			OP_SUB  : begin {c, y} = a - b; 
							v = (a[PARAM_WIDTH-1] != b[PARAM_WIDTH-1]) && (y[PARAM_WIDTH-1] != a[PARAM_WIDTH-1]);
	    			  end
			OP_DECA : begin y = a - 1; 			  end
			OP_AND 	: begin y = a & b;			  end
			OP_OR 	: begin y = a | b; 			  end
			OP_XOR	: begin	y = a ^ b; 			  end
			OP_COMA	: begin	y = ~a;	  			  end
			OP_SHRA : begin y = $signed(a) >>> 1; end
			OP_SHLA	: begin y = a << 1;			  end
			default : y = 0;
		endcase
		
		z = (y==0);
		n = (y[PARAM_WIDTH-1]);
	end
		
endmodule
		
		
		
		