//////////////////////////////////////////////////////////////////////////////////
//  
// Author : 		 Poorya Mohammadi Nasab  
// Create Date:    21:14:58 1399/02/14
// Design Name:	 4 Bit Full Adder
// Module Name:    Adder4Bit
// Target Devices: Spartan3E
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module Adder4Bit(
	input [3:0] A,B,
	input Cin,
	output [3:0] Sum,
	output Carry
    );
	 
	 assign {Carry,Sum} = A + B + Cin;


endmodule
