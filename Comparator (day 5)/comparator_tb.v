`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:02:33 12/19/2022
// Design Name:   comparator
// Module Name:   F:/Verilog/ISE/Comparator/comparator_tb.v
// Project Name:  Comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_tb;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;

	// Outputs
	wire L;
	wire E;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.A(A), 
		.B(B), 
		.L(L), 
		.E(E), 
		.G(G)
	);

	initial begin
		$monitor($time,"A=%b,B=%b,L=%b,E=%b,G=%b",A,B,L,E,G);
		{A[1],A[0],B[1],B[0]}=4'b0000;
	#5 {A[1],A[0],B[1],B[0]}=4'b0001;
	#5 {A[1],A[0],B[1],B[0]}=4'b0010;
	#5 {A[1],A[0],B[1],B[0]}=4'b0011;
	#5 {A[1],A[0],B[1],B[0]}=4'b0100;
	#5 {A[1],A[0],B[1],B[0]}=4'b0101;
	#5 {A[1],A[0],B[1],B[0]}=4'b0110;
	#5 {A[1],A[0],B[1],B[0]}=4'b0111;
	#5 {A[1],A[0],B[1],B[0]}=4'b1000;
	#5 {A[1],A[0],B[1],B[0]}=4'b1001;
	#5 {A[1],A[0],B[1],B[0]}=4'b1010;
	#5 {A[1],A[0],B[1],B[0]}=4'b1011;
	#5 {A[1],A[0],B[1],B[0]}=4'b1100;
	#5 {A[1],A[0],B[1],B[0]}=4'b1101;
	#5 {A[1],A[0],B[1],B[0]}=4'b1110;
	#5 {A[1],A[0],B[1],B[0]}=4'b1111;
	#5 $finish;

	end
      
endmodule

