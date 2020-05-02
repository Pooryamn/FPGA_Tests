//////////////////////////////////////////////////////////////////////////////////
//  
// Author : 		 Poorya Mohammadi Nasab  
// Create Date:    00:13:29 1399/02/14 
// Design Name:	 Parity Generator using Function
// Module Name:    Parity_Generator
// Target Devices: Spartan3E
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module Parity_generator(
	input [7:0] in,
	output Out
    );
	 
	 assign Out = Parity_Gen(in);
	 
	 
	 // Parity generator function
	 function Parity_Gen;
			
			input [7:0] in;
			
			Parity_Gen = ^in;
			
	 endfunction


endmodule
