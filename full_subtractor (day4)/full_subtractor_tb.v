`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:05:55 12/18/2022
// Design Name:   full_subtractor
// Module Name:   F:/Verilog/ISE/Full_Subtractor/full_subtractor_tb.v
// Project Name:  Full_Subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_subtractor_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire diff;
	wire borrow;

	// Instantiate the Unit Under Test (UUT)
	full_subtractor uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.diff(diff), 
		.borrow(borrow)
	);

	initial begin
		$monitor($time,"a=%b,b=%b,c=%b,diff=%b,borrow=%b",a,b,c,diff,borrow);
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

