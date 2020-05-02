//////////////////////////////////////////////////////////////////////////////////
//  
// Author : 		 Poorya Mohammadi Nasab  
// Create Date:    23:58:32 1399/02/13 
// Design Name:	 Alu with 2 operations(sum,sub)
// Module Name:    Alu_2_Operations
// Target Devices: Spartan3E
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module Alu_2_Operations(
	input [3:0] A,B,
	input c,
	output [3:0] Out
    );
	 
	 assign Out = c != 1 ? A+B : A-B;


endmodule
