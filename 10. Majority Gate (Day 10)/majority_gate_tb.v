`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:04:49 12/30/2022
// Design Name:   majority_gate
// Module Name:   F:/Verilog/ISE/Majority_Gate/majority_gate_tb.v
// Project Name:  Majority_Gate
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: majority_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module majority_gate_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	majority_gate uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.z(z)
	);

	initial begin
		$monitor($time,"a=%b,b=%b,c=%b,z=%b",a,b,c,z);
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

