`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:24:16 12/28/2022
// Design Name:   binary_to_gray
// Module Name:   F:/Verilog/ISE/binarytogray/binary_to_gray_tb.v
// Project Name:  binarytogray
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binary_to_gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module binary_to_gray_tb;

	// Inputs
	reg [3:0] B;

	// Outputs
	wire [3:0] G;

	// Instantiate the Unit Under Test (UUT)
	binary_to_gray uut (
		.B(B), 
		.G(G)
	);

	initial begin
		$monitor($time,"B=%h,G=%h",B,G);
		B=4'h0;
	#5	B=4'h1;
	#5	B=4'h2;
	#5	B=4'h3;
	#5	B=4'h4;
	#5	B=4'h5;
	#5	B=4'h6;
	#5	B=4'h7;
	#5	B=4'h8;
	#5	B=4'h9;
	#5	B=4'ha;
	#5	B=4'hb;
	#5	B=4'hc;
	#5	B=4'hd;
	#5	B=4'he;
	#5	B=4'hf;
	#5 $finish;
	
	

	end
      
endmodule

