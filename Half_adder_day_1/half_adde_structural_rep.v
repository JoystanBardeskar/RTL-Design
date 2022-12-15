`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:37 12/15/2022 
// Design Name: 
// Module Name:    half_adde_structural_rep 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module half_adde_structural_rep(
    input a,
    input b,
    output sum,
    output carry
    );
	 xor(sum,a,b);
	 and(carry,a,b);
	 


endmodule
