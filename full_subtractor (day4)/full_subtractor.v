`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:05 12/18/2022 
// Design Name: 
// Module Name:    full_subtractor 
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
module full_subtractor(
    input a,
    input b,
    input c,
    output diff,
    output borrow
    );
	 wire t1,t2,t3;
	 xor(diff,a,b,c);
	 and(t1,~a,c);
	 and(t2,~a,b);
	 and(t3,b,c);
	 or(borrow,t1,t2,t3);
	 


endmodule
