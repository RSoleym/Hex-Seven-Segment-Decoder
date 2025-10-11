module bitwise_operation();

	reg [5:0] x = 0;
	reg [5:0] y = 0;
	reg [5:0] results;
	
	initial begin
		x = 6'b00_0000;
		y = 6'b00_0000;
		results[5:0] = x[5:0] & y[5:0];
		$display("x = %b, y = %b, results = %b", x, y, results);
		
		x = 6'b00_0101;
		y = 6'b11_0001;
		results[5:0] = x[5:0] & y[5:0];
		$display("x = %b, y = %b, results = %b", x, y, results);
		
		x = 6'b00_0101;
		y = 6'b11_0001;
		results[5:0] = ~(x[5:0] & y[5:0]);
		$display("x = %b, y = %b, results = %b", x, y, results);
		
		x = 6'b10_0101;
		y = 6'b01_1011;
		results[5:0] = x[5:0] | y[5:0];
		$display("x = %b, y = %b, results = %b", x, y, results);
		
		x = 6'b10_0101;
		y = 6'b01_1011;
		results[5:1] = x[5:1] & y[5:1];
		results[0] = ~(x[0] & y[0]);
		$display("x = %b, y = %b, results = %b", x, y, results);
		
		x = 6'b01_0110;
		y = 6'b01_1011;
		results[5:0] = x[5:0] ^ y[5:0];
		$display("x = %b, y = %b, results = %b", x, y, results);
		
		x = 6'b01_0110;
		y = 6'b01_1011;
		results[5:0] = ~(x[5:0] ^ y[5:0]);
		$display("x = %b, y = %b, results = %b", x, y, results);
		
		x = 6'b01_1011;
		y = 6'b01_1011;
		results[5:0] = x[5:0] ~^ y[5:0];
		$display("x = %b, y = %b, results = %b", x, y, results);
	end
	
endmodule