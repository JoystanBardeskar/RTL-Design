`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:18:08 12/20/2022 
// Design Name: 
// Module Name:    magnitude_3bit_comparator 
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
module magnitude_3bit_comparator(
    input [2:0] A,
    input [2:0] B,
    output L,
    output E,
    output G
    );
	 wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19;
	 
	 //A=B
	 
	 xnor(t1,A[2],B[2]);
	 xnor(t2,A[1],B[1]);
	 xnor(t3,A[0],B[0]);
	 and(E,t1,t2,t3);
	 
	 //A<B
	 
	 and(t4,~A[2],B[2]);
	 xnor(t5,A[2],B[2]);
	 and(t6,~A[1],B[1]);
	 and(t7,t5,t6);
	 xnor(t8,A[2],B[2]);
	 xnor(t9,A[1],B[1]);
	 and(t10,~A[0],B[0]);
	 and(t11,t8,t9,t10);
	 or(L,t4,t7,t11);
	 
	 //A>B
	 
	 and(t12,A[2],~B[2]);
	 xnor(t13,A[2],B[2]);
	 and(t14,A[1],~B[1]);
	 and(t15,t13,t14);
	 xnor(t16,A[2],B[2]);
	 xnor(t17,A[1],B[1]);
	 and(t18,A[0],~B[0]);
	 and(t19,t16,t17,t18);
	 or(G,t12,t15,t19);
	 


endmodule
