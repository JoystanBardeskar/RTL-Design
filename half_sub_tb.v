`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:52:29 12/16/2022
// Design Name:   half_sub
// Module Name:   F:/Verilog/ISE/half_sub/half_sub_tb.v
// Project Name:  half_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_sub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_sub_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire Do;
	wire Bo;

	// Instantiate the Unit Under Test (UUT)
	half_sub uut (
		.a(a), 
		.b(b), 
		.Do(Do), 
		.Bo(Bo)
	);

	initial begin
		$monitor($time,"a=%b,b=%b,Do=%b,Bo=%b",a,b,Do,Bo);
		
		#5 a=1'b0;  b=1'b0;
		#5 a=1'b0;  b=1'b1;
		#5 a=1'b1;  b=1'b0;
		#5 a=1'b1;  b=1'b1;
		#5 $finish;
		
	end
      
endmodule

