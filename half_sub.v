`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:04 12/16/2022 
// Design Name: 
// Module Name:    half_sub 
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
module half_sub(
    input a,
    input b,
    output Do,
    output Bo
    );
	 assign Do=a^b;
	 assign Bo=~a&b;


endmodule
