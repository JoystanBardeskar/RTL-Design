`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:59 12/16/2022 
// Design Name: 
// Module Name:    half_sub_structural 
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
module half_sub_structural(
    input a,
    input b,
    output Do,
    output Bo
    );
	 xor(Do,a,b);
	 not(a_bar,a);
	 and(Bo,a_bar,b);


endmodule
