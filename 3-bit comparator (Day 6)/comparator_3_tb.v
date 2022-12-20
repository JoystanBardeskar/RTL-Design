`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:31:10 12/20/2022
// Design Name:   magnitude_3bit_comparator
// Module Name:   F:/Verilog/ISE/Magnitude_Comparator3/comparator_3_tb.v
// Project Name:  Magnitude_Comparator3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: magnitude_3bit_comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_3_tb;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;

	// Outputs
	wire L;
	wire E;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	magnitude_3bit_comparator uut (
		.A(A), 
		.B(B), 
		.L(L), 
		.E(E), 
		.G(G)
	);

	initial begin
		$monitor($time,"A=%b,B=%b,L=%b,E=%b,G=%b",A,B,L,E,G);
		{A[2],A[1],A[0],B[2],B[1],B[0]}=6'b000000;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b000001;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b000010;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b000100;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b001000;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b010000;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b100000;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b000011;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b000111;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b011000;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b111000;
	#5 {A[2],A[1],A[0],B[2],B[1],B[0]}=6'b101011;
	#5 $finish;
	end
      
endmodule

