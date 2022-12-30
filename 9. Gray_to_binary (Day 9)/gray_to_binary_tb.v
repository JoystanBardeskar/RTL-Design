`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:51:37 12/29/2022
// Design Name:   gray_to_binary
// Module Name:   F:/Verilog/ISE/Gray_to_Binary/gray_to_binary_tb.v
// Project Name:  Gray_to_Binary
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray_to_binary
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gray_to_binary_tb;

	// Inputs
	reg [3:0] G;

	// Outputs
	wire [3:0] B;

	// Instantiate the Unit Under Test (UUT)
	gray_to_binary uut (
		.G(G), 
		.B(B)
	);

	initial begin
		$monitor($time,"B=%h,G=%h",B,G);
		G=4'h0;
	#5 G=4'h1;
	#5 G=4'h2;
	#5 G=4'h3;
	#5 G=4'h4;
	#5 G=4'h5;
	#5 G=4'h6;
	#5 G=4'h7;
	#5 G=4'h8;
	#5 G=4'h9;
	#5 G=4'ha;
	#5 G=4'hb;
	#5 G=4'hc;
	#5 G=4'hd;
	#5 G=4'he;
	#5 G=4'hf;
	#5 $finish;
	
	end
      
endmodule

