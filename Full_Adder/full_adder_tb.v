`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:16:08 12/17/2022
// Design Name:   full_adder
// Module Name:   F:/Verilog/ISE/full_adder/full_adder_tb.v
// Project Name:  full_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
	
		$monitor($time,"a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
		{a,b,c}=3'b000;
	#5 {a,b,c}=3'b001;
	#5 {a,b,c}=3'b010;
	#5 {a,b,c}=3'b011;
	#5 {a,b,c}=3'b100;
	#5 {a,b,c}=3'b101;
	#5 {a,b,c}=3'b110;
	#5 {a,b,c}=3'b111;
	#5 $finish;
	
		
	end
      
endmodule

