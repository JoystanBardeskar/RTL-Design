`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:32 12/15/2022
// Design Name:   half_adder
// Module Name:   F:/Verilog/ISE/half_adder/half_adder_tb.v
// Project Name:  half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_adder_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		$dumpfile("half_adder.vcd");
		$dumpvars(0,half_adder_tb);
		
		$monitor($time,"a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
		
		#5 a=1'b0; b=1'b0;
		#5 a=1'b0; b=1'b1;
		#5 a=1'b1; b=1'b0;
		#5 a=1'b1; b=1'b1;
		#5 $finish;
	end
endmodule



