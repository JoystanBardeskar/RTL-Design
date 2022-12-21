`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:44:27 12/21/2022
// Design Name:   mux
// Module Name:   F:/Verilog/ISE/mux/mux_tb.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
	reg [15:0] in;
	reg [3:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.in(in), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		$monitor ($time, "in=%h, sel=%h, out=%b", in,sel,out);
		#5 in=16'h3f0a; sel=4'h0;
		#5 sel=4'h1;
		#5 sel=4'h6;
		#5 sel=4'hc;
		#5 $finish;
		

	end
      
endmodule

