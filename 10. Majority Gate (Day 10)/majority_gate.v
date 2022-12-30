`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:05 12/30/2022 
// Design Name: 
// Module Name:    majority_gate 
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
module majority_gate(
    input a,
    input b,
    input c,
    output z
    );
	 wire t1,t2,t3;
	 and(t1,a,b);
	 and(t2,b,c);
	 and(t3,c,a);
	 or(z,t1,t2,t3);
	 


endmodule
