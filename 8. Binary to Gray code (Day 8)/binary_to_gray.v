`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:32 12/28/2022 
// Design Name: 
// Module Name:    binary_to_gray 
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
module binary_to_gray(
    input [3:0] B,
    output [3:0] G
    );
	 assign G[3]=B[3];
	 xor(G[2],B[3],B[2]);
	 xor(G[1],B[2],B[1]);
	 xor(G[0],B[1],B[0]);


endmodule
