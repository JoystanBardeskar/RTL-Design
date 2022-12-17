`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:22 12/17/2022 
// Design Name: 
// Module Name:    full_adder_structural 
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
module full_adder_structural(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
	 wire t1,t2,t3;
	 xor(sum,a,b,c);
	 and(t1,a,b);
	 and(t2,b,c);
	 and(t3,a,c);
	 or(carry,t1,t2,t3);
	 


endmodule
