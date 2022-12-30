`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:45 12/29/2022 
// Design Name: 
// Module Name:    gray_to_binary 
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
module gray_to_binary(
    input [3:0] G,
    output [3:0] B
    );
	 assign B[3]=G[3];
	 xor(B[2],G[3],G[2]);
	 xor(B[1],B[2],G[1]);
	 xor(B[0],B[1],G[0]);
	 


endmodule
