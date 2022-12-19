`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:17 12/19/2022 
// Design Name: 
// Module Name:    comparator 
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
module comparator(
    input [1:0] A,
    input [1:0] B,
    output L,
    output E,
    output G
    );
	 wire t1,t2,t3,t4,t5,t6,t7,t8;
	 
	 //E(A=B) 
	 xnor(t1,A[1],B[1]);
	 xnor(t2,A[0],B[0]);
	 and(E,t1,t2);
	 
	 //L(A<B)
	 and(t3,~A[1],B[1]);
	 and(t4,~A[0],~A[1],B[0]);
	 and(t5,~A[0],B[0],B[1]);
	 or(L,t3,t4,t5);
	 
	 //G(A>B) 
	 and(t6,A[1],~B[1]);
	 and(t7,A[0],A[1],~B[0]);
	 and(t8,A[0],~B[0],~B[1]);
	 or(G,t6,t7,t8);
	 
	 
	 
	 


endmodule
